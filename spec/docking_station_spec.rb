require './lib/docking_station'
require './lib/bike'
describe DockingStation do
  describe '#release_bike' do
    it 'has method release_bike' do
      is_expected.to respond_to(:release_bike)
    end
    context 'empty dock station' do
      it 'Inform user no bike avaliable' do
        expect { subject.release_bike }.to raise_error 'Docking station empty'
      end
    end
  end
  it 'check if release bike is working' do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike.working?).to eq true
  end
  describe '#dock' do
    it 'has method dock' do
      is_expected.to respond_to(:dock).with(1).argument
    end
    context 'full dock station' do
      it 'raise an error' do
        expect { (subject.capcity+ 1).times { subject.dock(Bike.new) } }.to raise_error 'Docking station is full'
      end
    end
  end
  it 'see Bike from docking station' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes[0]).to eq (bike)
  end
  it 'return default capacity' do
    expect(subject.capcity).to eq DockingStation::DEFAULT_CAPACITY
  end
  it 'check capacity can be changed' do
    new_capacity = 10
    station = DockingStation.new(new_capacity)
    expect(station.capcity).to eq new_capacity
  end
end
