# Bike

require_relative 'cargo'

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :rented, :contents

  def initialize(id, color, price, weight = STANDARD_WEIGHT)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo = Cargo.new
  end

  def add(item)
    self.contents << item
  end

end

class Rental

  def initialize(bike)
    @bike = bike
  end

end

class Cargo extends 

  MAX_ITEMS = 10

  def initialize
    @capacity = []
  end

  def remove(item)
    self.capacity.remove(item)
  end

  def pannier_capacity
    MAX_ITEMS
  end

  def capacity
    MAX_ITEMS - self.capacity.size
  end

end
