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
    self.storage == [] ? false : self.storage[0]
  end

  def release_bike(name)
    Bike.new(name)
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
