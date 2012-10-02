class AddFollowingRelationshipCountsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :follower_count, :integer, default: 0
    add_column :users, :followed_user_count, :integer, default: 0
  end
end
