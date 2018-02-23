require 'docking_station'
require 'bike'
describe DockingStation do
  DEFAULT_CAPACITY = 20
 describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'

end
end

describe '#dock' do
  it 'raises an error while the capacity is full' do
    DEFAULT_CAPACITY.times{ subject.dock(Bike.new) }
    expect { subject.dock Bike.new}.to raise_error 'Docking station full'

  end
 end


#  it {is_expected.to respond_to(:bike)}

  it 'returns docked bikes' do
    bike = Bike.new
    #subject.dock(bike)
    expect(subject.dock(bike)).to eq bike
  end


end
#it { is_expected.to respond_to(:zero?).with(0).arguments }
