class VideoShout < ActiveRecord::Base
  attr_accessible :url
  has_one :shout, as: :content

  def index
    shout.user.email
  end
end
