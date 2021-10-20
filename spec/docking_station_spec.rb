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

  it 'should respond to method dock_bike' do
    expect(subject).to respond_to (:dock_bike)
  end

  it 'method dock_bike should store bike object' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq (bike)
  end
end
