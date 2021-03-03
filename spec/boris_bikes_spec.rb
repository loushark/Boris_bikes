require 'boris_bikes.rb'

# As a person,
# So that I can use a bike,
# I'd like a docking station to release a bike.

describe 'DockingStation' do
  let(:docking_station) {DockingStation.new}

  describe 'release_bike' do
    it 'returns a new instance of the Bike class' do
      expect do
        unicycle = docking_station.release_bike
        print unicycle.working?
      end.to output("true").to_stdout

    end
  end

end
