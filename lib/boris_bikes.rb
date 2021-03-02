class DockingStation
  attr_accessor :bike

  def release_bike
    self.bike = 'Here is your bike'
  end
end

class Bike
  def working?
    true
  end

end
