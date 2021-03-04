require 'boris_bikes.rb'

# As a person,
# So that I can use a bike,
# I'd like a docking station to release a bike.

describe 'DockingStation' do
  let(:central) { DockingStation.new 'central'}

  describe 'release_bike' do
    # it 'checks if there is a bike to be released and returns its name' do
    #   expect { central.release_bike  }.to raise_error
    # end

    # Guard condition - bikes aren't allowed to release bikes!

    it "only works on instances of a DockingStation" do
      bike = Bike.new('error')
      expect { bike.release_bike }.to raise_error(NoMethodError)
    end

    it "fails if storage is empty" do
      expect { central.release_bike }.to raise_error("No bikes available")
    end
  end

  describe 'dock' do
    it "stores a bike in an instance of a docking station" do
      expect do
        unicycle = Bike.new('unicycle')
        central.dock(unicycle)
        print central.storage[0]
      end.to output("unicycle").to_stdout
    end

    # Guard condition - capacity

    it "doesn't accpet more bikes when at capacity" do
      unicycle = Bike.new('unicycle')
      central.dock(unicycle)
      tricycle = Bike.new('tricycle')
      expect { central.dock(tricycle) }.to raise_error("Cannot dock bike, at capacity")
    end
  end

  describe 'is_there_a_bike?' do

    it "checks if there is a bike in the instance variable of a docking station instance" do
      expect do
        unicycle = Bike.new('unicycle')
        print central.is_there_a_bike?
      end.to output("false").to_stdout
    end


    it "returns a bike name if there is a bike in storage" do
      unicycle = Bike.new('unicycle')
      central.dock(unicycle)
      expect(central.is_there_a_bike?).to eq(true)
    end
  end




end
