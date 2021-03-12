require 'bike'

# We can use predicate matchers any time we're working with methods that end with a ?

# expect(obj).to respond_to(:foo).with(1).argument

describe 'Bike' do
  let(:tricycle) {Bike.new 'tricycle'}

# it { is_expected.to respond_to(:lock, :unlock, :get_entries, :add_entry)}

  describe 'working?' do
    it 'checks if a bike object is working by returning true/false' do
      expect(tricycle.working?).to eq true
    end
  end

  describe "#report_broken" do
    it "can be reported as broken" do
      expect(tricycle.report_broken).to eq true
    end

    it "does not work if reported broken" do
      tricycle.report_broken
      expect(tricycle.working?).to eq false
    end
  end
end
