class PublicShoutFeed
  include ActiveModel::Conversion

  def initialize feed
    @feed = feed
  end

  def shouts
    @feed.shouts.public
  end

  def to_partial_path
    @feed.to_partial_path
  end
end
