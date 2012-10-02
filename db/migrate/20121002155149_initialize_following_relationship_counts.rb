class InitializeFollowingRelationshipCounts < ActiveRecord::Migration
  def up
    update(<<-SQL)
      UPDATE users
      SET
        follower_count = (
          SELECT COUNT(*)
          FROM following_relationships
          WHERE following_relationships.followed_user_id = users.id
        )
    SQL
    update(<<-SQL)
      UPDATE users
      SET
        followed_user_count = (
          SELECT COUNT(*)
          FROM following_relationships
          WHERE following_relationships.follower_id = users.id
        )
    SQL
  end

  def down
  end
end
