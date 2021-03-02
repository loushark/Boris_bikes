require 'boris_bikes.rb'

# We can use predicate matchers any time we're working with methods that end with a ?

# expect(obj).to respond_to(:foo).with(1).argument

describe 'Bike' do
  let(:tricycle) {Bike.new}

  describe 'working?' do
    it 'checks if a bike object is working by returning true/false' do
      expect(tricycle.working?).to eq true
    end
  end

end
