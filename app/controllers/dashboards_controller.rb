class DashboardsController < ApplicationController
  before_filter :authorize

  def show
    @feed = current_user.feed
    @text_shout = TextShout.new
    @photo_shout = PhotoShout.new
    @video_shout = VideoShout.new
  end
end
