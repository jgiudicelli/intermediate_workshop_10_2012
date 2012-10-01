class PhotoShoutsController < ApplicationController
  def create
    photo_shout = PhotoShout.new(params[:photo_shout])
    current_user.shouts.create(content: photo_shout)
    redirect_to dashboard_path, notice: "Shouted!"
  end
end
