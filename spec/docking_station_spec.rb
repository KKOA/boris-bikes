require './lib/docking_station'
require './lib/bike'
describe Docking_Station do
  it "has method release_bike" do
    is_expected.to respond_to(:release_bike)
  end
  it 'check if release bike is working' do
    bike = subject.release_bike
    expect(bike.working?).to eq true
  end
  it 'has method dock' do
    is_expected.to respond_to(:dock).with(1).argument
  end
  it 'see Bike from docking station' do
    subject.dock(Bike.new)
    except(subject.bike).to eq (Bike.new)
  end

end
