class VideoShoutsController < ApplicationController
  def create
    video_shout = VideoShout.new(params[:video_shout])
    current_user.shouts.create(content: video_shout)
    redirect_to dashboard_path, notice: "Shouted!"
  end
end
