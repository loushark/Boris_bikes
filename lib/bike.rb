class Bike
  attr_accessor :name, :broken

  def initialize(name)
    @name = name
    @broken = false
  end

  def report_broken
     @broken = true
  end

  def working?
    @broken != true
  end
end
