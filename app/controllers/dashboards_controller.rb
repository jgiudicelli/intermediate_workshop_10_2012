class DashboardsController < ApplicationController
  before_filter :authorize

  def show
    @shouts = current_user.shouts.latest
    @shout = Shout.new
  end
end
