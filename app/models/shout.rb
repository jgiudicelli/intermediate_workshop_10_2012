class Shout < ActiveRecord::Base
  belongs_to :user
  belongs_to :content, polymorphic: true
  attr_accessible :body, :content, :private

  delegate :email, to: :user, prefix: true
  delegate :index, to: :content, prefix: true
  
  def self.latest
    order("created_at DESC")
  end

  def self.public
    where(private: false)
  end
end
