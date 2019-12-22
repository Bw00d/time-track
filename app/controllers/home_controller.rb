# :nodoc:
class HomeController < ApplicationController
  include SkipAuthorization

  def index
    @activities = Activity.all
  end
end
