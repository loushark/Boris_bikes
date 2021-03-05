class DockingStation
  attr_accessor :name, :storage, :capacity

  def initialize(name, storage=[], capacity=20)
    @name = name
    @storage = storage
    @capacity = capacity
  end

  def dock(bike)
      storage << bike.name
      unless full?
    end
  end

  def is_there_a_bike?
    storage != [] ? true : false
  end

  def release_bike
    if is_there_a_bike?
      storage[0]
    else
      fail "No bikes available"
    end
  end

  def full?
    if storage.length >= capacity
      fail "Cannot dock bike, at capacity"
    end
  end

end

class Bike
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def working?
    true
  end
end
