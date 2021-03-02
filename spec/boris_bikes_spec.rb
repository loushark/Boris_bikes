require 'boris_bikes.rb'

# To call a method on a class, def self.release_bike

# describe 'DockingStation' do
#   it 'responds to release_bike method' do
#     expect(DockingStation.release_bike).to eq 'Here is your bike'
#   end
# end

describe 'DockingStation' do
  let(:docking_station) {DockingStation.new}

  describe 'release_bike' do
    it 'saves the released bike in a bike variable' do
      expect do
        docking_station.release_bike
        print docking_station.bike
      end.to output("Here is your bike").to_stdout

    end
  end
  # describe 'working?' do
  # it 'Checks if the bike is working'
  #   expect bike.working?.to eq "bike is working"
  # end
end

# describe 'DockingStation' do
#   let(:central) {DockingStation.new}
#   it 'responds to release_bike method' do
#     expect(central.release_bike).to eq 'Here is your bike'
#   end
#   it 'saves the released bike in a bike variable' do
#     expect(central.bike).to eq 'Here is your bike'
#   end
# end
