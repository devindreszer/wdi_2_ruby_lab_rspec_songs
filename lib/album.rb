class Album
  attr_reader :title, :tracks

  def initialize(title:, tracks:)
    @title = title
    @tracks = tracks
  end
end
