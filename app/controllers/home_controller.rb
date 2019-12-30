# :nodoc:
class HomeController < ApplicationController
  include SkipAuthorization

  def index
    @activities = Activity.all
    @activity   = Activity.new
    @slot       = Slot.new
    @current_slot = Slot.all.last
    @slots = Slot.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)
  end
end
