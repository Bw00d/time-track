# :nodoc:
class HomeController < ApplicationController
  include SkipAuthorization

  def index
    @activities = Activity.all
    @activity   = Activity.new
    @slot       = Slot.new
    @current_slot = Slot.all.last
    @slots      = Slot.all.order(:starttime)
    @slots = (@slots.where(endtime: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day) ||
             @slots.where(starttime: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)).uniq || 
            @slots.where(endtime: nil)
    @data = []
    @slots.each {|s| @data << [s.description, s.duration] }
    @data.append(["Future", (Time.zone.tomorrow.at_beginning_of_day - Time.now).to_i / 60])
  end
end
