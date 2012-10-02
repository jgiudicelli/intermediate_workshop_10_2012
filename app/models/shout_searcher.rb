class ShoutSearcher
  def initialize term
    @term = term
  end

  def shouts
    indexes = ShoutSearchIndex.where("shout_index LIKE ?", "%#{@term}%")
    Shout.where(id: indexes.select("shout_id"))
  end
end
