require 'boris_bikes.rb'

# To call a method on a class, def self.<name of method>

describe 'DockingStation' do
  it 'responds to release_bike method' do
    expect(DockingStation.release_bike).to eq 'Here is your bike'
  end
end

# describe 'DockingStation' do
#   let(:central) {DockingStation.new}
#   it 'responds to release_bike method' do
#     expect(central.release_bike).to eq 'Here is your bike'
#   end
# end
