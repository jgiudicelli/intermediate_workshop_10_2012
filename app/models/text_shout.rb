class TextShout < ActiveRecord::Base
  attr_accessible :body
  has_one :shout, as: :content

  def index
    [body, shout.user.email].join(" ")
  end
end
