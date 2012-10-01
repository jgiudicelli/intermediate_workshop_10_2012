class Shout < ActiveRecord::Base
  belongs_to :user
  attr_accessible :body

  def self.latest
    order("created_at DESC")
  end
end
