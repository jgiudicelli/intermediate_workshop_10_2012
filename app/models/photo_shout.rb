class PhotoShout < ActiveRecord::Base
  attr_accessible :image
  has_one :shout, as: :content
  has_attached_file :image

  def index
    [image_file_name, shout.user.email].join(" ")
  end
end
