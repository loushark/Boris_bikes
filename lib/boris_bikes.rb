class DockingStation
  attr_accessor :name, :storage

  def initialize(name)
    @name = name
    @storage = []
  end

  def dock(bike)
    self.storage << bike.name
  end

  def is_there_a_bike?
    self.storage != [] ? true : false
  end

  def release_bike
    if self.is_there_a_bike?
      self.storage[0]
    else
      fail "No bikes available"
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
