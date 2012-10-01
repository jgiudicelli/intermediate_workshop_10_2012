class User < ActiveRecord::Base
  include Clearance::User
  has_many :shouts

  def can_follow? user
    user != self
  end
end
