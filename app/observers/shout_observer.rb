class ShoutObserver < ActiveRecord::Observer

	def after_commit(shout)
			ShoutSearchIndex.create(shout: shout, shout_index: shout.content.index)
	end


end