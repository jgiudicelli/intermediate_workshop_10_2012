class ShoutSearchIndex < ActiveRecord::Base
  belongs_to :shout
  attr_accessible :shout_index, :shout
end
