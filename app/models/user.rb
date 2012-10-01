class User < ActiveRecord::Base
  include Clearance::User
  has_many :shouts

  # follower_id, followed_user_id
  #
  has_many :following_relationships, foreign_key: :follower_id
  has_many :followed_users, through: :following_relationships

  def can_follow? user
    user != self
  end
end
