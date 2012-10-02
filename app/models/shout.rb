class Shout < ActiveRecord::Base
  belongs_to :user
  belongs_to :content, polymorphic: true
  attr_accessible :body, :content, :private

  after_commit :create_index
  def create_index
    ShoutSearchIndex.create(shout: self, shout_index: content.index)
  end

  delegate :email, to: :user, prefix: true

  def self.latest
    order("created_at DESC")
  end

  def self.public
    where(private: false)
  end
end
