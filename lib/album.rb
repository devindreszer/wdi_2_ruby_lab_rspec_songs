require_relative 'track'
class Album
  attr_reader :title, :tracks, :price, :artists

  def initialize(title:, tracks:)
    @title = title
    @tracks = tracks
    @price = tracks.map(&:price).reduce(&:+)
    @artists = tracks.map(&:artists).flatten.uniq

    raise ArgumentError if tracks.count <1
  end

  def duration
    tracks.map(&:duration).reduce(&:+)
  end

  def determine_is_single?
    tracks.length == 1
  end
end
