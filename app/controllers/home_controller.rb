# :nodoc:
class HomeController < ApplicationController
  include SkipAuthorization

  def index
    @activities = Activity.all
    @activity   = Activity.new
    @slot       = Slot.new
  end
end
