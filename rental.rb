class Rental

  attr_reader :bike

  def initialize(bike, luggage)
    @bike = bike
  end

  def total_price
    bike_price + luggage_price
  end

  def bike_price
    self.bike.price
  end

  def luggage_price
    self.luggage.weight * 10
  end

  def weight
    self.bike.weight + self.luggage.weight
  end

end
