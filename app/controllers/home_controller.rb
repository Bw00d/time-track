# :nodoc:
class HomeController < ApplicationController
  include SkipAuthorization

  def index
    @activities = Activity.all
    @activity   = Activity.new
    @slot       = Slot.new
    @current_slot = Slot.all.last
  end
end
