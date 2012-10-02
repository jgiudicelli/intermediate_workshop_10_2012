class FollowingRelationshipsController < ApplicationController
  before_filter :authorize

  def create
    followed_user = User.find(params[:user_id])
    current_user.follow followed_user
    redirect_to followed_user, notice: "Now following."
  end
end
