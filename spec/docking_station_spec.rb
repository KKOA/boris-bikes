require './lib/docking_station'
require './lib/bike'
describe Docking_Station do
  describe "#release_bike" do
    it "has method release_bike" do
      is_expected.to respond_to(:release_bike)
    end
    context "empty dock station" do
      it "Inform user no bike avaliable" do
        expect {subject.release_bike}.to raise_error "message"
      end
    end
  end
  it 'check if release bike is working' do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike.working?).to eq true
  end
  describe "#dock" do
    it 'has method dock' do
      is_expected.to respond_to(:dock).with(1).argument
    end
    context "full dock station" do
      it "Prevent adding new bike" do
        expect{subject.release_bike}.to raise_error "message"
      end
    end
  end
  it 'see Bike from docking station' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq (bike)
  end

end
