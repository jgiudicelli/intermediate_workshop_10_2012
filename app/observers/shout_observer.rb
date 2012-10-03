class ShoutObserver < ActiveRecord::Observer

	def after_commit(shout)
			ShoutSearchIndex.create(shout: shout, shout_index: shout.content_index)
	end


end