require 'boris_bikes.rb'

# As a person,
# So that I can use a bike,
# I'd like a docking station to release a bike.

describe 'DockingStation' do
  let(:central) { DockingStation.new 'central'}

  describe 'release_bike' do
    it 'returns a new instance of the Bike class' do
      expect do
        unicycle = central.release_bike('unicycle')
        print unicycle.working?
      end.to output("true").to_stdout
    end
  end

  describe 'dock' do
    it "stores a bike in an instance of a docking station" do
      expect do
        unicycle = central.release_bike('unicycle')
        central.dock(unicycle)
        print central.storage[0]
      end.to output("unicycle").to_stdout
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
      expect(central.is_there_a_bike?).to eq("unicycle")
    end  
  end
end
