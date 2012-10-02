class FollowingRelationship < ActiveRecord::Base
  after_create :increment_counts
  belongs_to :follower, class_name: 'User'
  belongs_to :followed_user, class_name: 'User'

  private

  def increment_counts
    follower.increment! :followed_user_count
    followed_user.increment! :follower_count
  end
end
