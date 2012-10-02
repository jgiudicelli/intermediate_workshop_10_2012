class ShoutFeed
  include ActiveModel::Conversion

  def initialize(user_ids)
    @user_ids = user_ids
  end

  def shouts
    Shout.where(user_id: @user_ids).includes(:user, :content).latest
  end
end
