class Shout < ActiveRecord::Base
  belongs_to :user
  belongs_to :content, polymorphic: true
  attr_accessible :body, :content

  delegate :email, to: :user, prefix: true

  def self.latest
    order("created_at DESC")
  end
end
