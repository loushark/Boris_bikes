require 'boris_bikes'

describe 'DockingStation' do
  let(:central) { DockingStation.new 'central'}
  let(:westend) { DockingStation.new 'westend', 25 }
  let(:unicycle) { double("Bike", name: 'unicycle') }

  describe 'release_bike' do

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
        central.dock(unicycle)
      expect(central.storage[-1].name).to eq("unicycle")
    end

    # Guard condition - capacity

    it "doesn't accept more bikes when at capacity" do
      DockingStation::DEFAULT_CAPACITY.times { central.dock(unicycle) }
      expect { central.dock(unicycle) }.to raise_error("Cannot dock bike, at capacity")
    end
  end

    describe 'is_there_a_bike?' do

      it "checks if there is a bike in the instance variable of a docking station instance" do
        expect do
          print central.is_there_a_bike?
        end.to output("false").to_stdout
      end


      it "returns a bike name if there is a bike in storage" do
        central.dock(unicycle)
        expect(central.is_there_a_bike?).to eq(true)
      end

    it "can set a new capacity" do
      expect(westend.capacity).to eq 25
    end

    it "has a default capacity of 20" do
      expect(central.capacity).to eq 20
    end
  end

  context 'when bike is broken' do
    before do
     allow(unicycle).to receive(:working?).and_return(false)
    end
    # let(:unicycle) { double("Bike", name: 'unicycle', working?: false) }

    it "doesn't release a bike if it is broken" do
      central.dock(unicycle)
      #unicycle.report_broken
      expect { central.release_bike }.to raise_error "Sorry! This bike does not work!"
    end

    it "accepts bikes to dock if they are broken" do
      #unicycle.report_broken
      expect(central.dock(unicycle)).to eq "Bike is docked successfully!"
    end
  end
end
