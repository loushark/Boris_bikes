require_relative 'bike'

class DockingStation
  attr_reader :name, :storage, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(name, capacity = DEFAULT_CAPACITY)
    @name = name
    @storage = []
    @capacity = capacity
  end

  def dock(bike)
    unless full?
      storage << bike
      "Bike is docked successfully!"
    end
  end

  def is_there_a_bike?
    storage != [] ? true : false
  end

  def release_bike
    fail "No bikes available" if empty?
    fail "Sorry! This bike does not work!" unless storage[0].working?
  end


private

  def full?
    fail "Cannot dock bike, at capacity" if storage.length == DEFAULT_CAPACITY
  end

  def empty?
    storage == []
  end

end
