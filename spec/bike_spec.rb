require 'bike'
describe Bike do
  it 'has method working' do
    is_expected.to respond_to(:working?)
  end
end
