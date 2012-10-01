class PhotoShout < ActiveRecord::Base
  attr_accessible :image
  has_one :shout, as: :content
end
