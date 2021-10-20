require 'docking_station'
require 'bike'

describe DockingStation do
  #   it 'should respond to method release_bike' do
  #     expect(subject).to respond_to(:release_bike)
  #   end
  it { should respond_to(:release_bike) }

  it 'release_bike should return bike object' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
