class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @feed = @user.public_feed
    if not @user.followed_by?(current_user)
      @feed = PublicShoutFeed.new(@feed)
    end
  end
end
