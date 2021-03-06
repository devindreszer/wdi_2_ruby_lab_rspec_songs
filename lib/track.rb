class Track
  attr_reader :title, :artists, :duration, :price

  def initialize(title:, artists:, duration:, price:)
    @title = title
    @artists = artists
    @duration = duration
    @price = price
    @original_price = price

    raise ArgumentError if artists.class != Array

  end

  def set_discount(percentage)
    raise ArgumentError if percentage > 100
    @price = price * (1 - percentage * 0.01)
  end

  def reset_discount
    @price = @original_price
  end
end
