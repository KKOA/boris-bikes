require './lib/docking_station'
describe Docking_Station do
  it "has method release_bike" do
    is_expected.to respond_to(:release_bike)
  end

end
