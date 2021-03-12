require_relative 'bike'

class DockingStation
  attr_accessor :name, :storage, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(name, storage=[])
    @name = name
    @storage = storage
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

private

  def full?
    fail "Cannot dock bike, at capacity" if storage.length == DEFAULT_CAPACITY
  end

  def empty?
    storage == []
  end

end
