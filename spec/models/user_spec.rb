require 'spec_helper'

describe User do
  it "#can_follow? unless same user" do
    user = build(:user)
    user.can_follow?(user).should eq(false)
  end

  it "#can_follow? unless already following" do

  end

  it "#can_follow? other users" do
    follower = build(:user)
    user_to_follow = build(:user)
    follower.can_follow?(user_to_follow).should eq(true)
  end
end
