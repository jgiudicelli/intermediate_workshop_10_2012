class DashboardsController < ApplicationController
  before_filter :authorize

  def show
    @shouts = current_user.shouts.latest
    @text_shout = TextShout.new
    @photo_shout = PhotoShout.new
    @video_shout = VideoShout.new
  end
end
