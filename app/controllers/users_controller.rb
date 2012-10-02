class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @feed = @user.public_feed
  end
end
