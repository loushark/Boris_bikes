require_relative 'bike'

class DockingStation
  attr_accessor :name, :storage, :capacity

  def initialize(name, storage=[], capacity=20)
    @name = name
    @storage = storage
    @capacity = capacity
  end

  def dock(bike)
    unless full?
      storage << bike.name
      "Bike is docked successfully!"
    end
  end

  def is_there_a_bike?
    storage != [] ? true : false
  end

  def release_bike
    fail "No bikes available" if empty?
  end

  def full?
    fail "Cannot dock bike, at capacity" if storage.length == capacity
  end

  def empty?
    storage == []
  end

end
