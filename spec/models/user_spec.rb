require 'spec_helper'

describe User do
  it "#can_follow? unless same user" do
    user = build_stubbed(:user)
    user.can_follow?(user).should eq(false)
  end

  it "#can_follow? unless already following" do
    follower = create(:user)
    followed_user = create(:user)
    follower.followed_users << followed_user
    follower.can_follow?(followed_user).should eq(false)
  end

  it "#can_follow? other users" do
    follower = build_stubbed(:user)
    user_to_follow = build_stubbed(:user)
    follower.can_follow?(user_to_follow).should eq(true)
  end
end
