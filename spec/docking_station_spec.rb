require 'docking_station'
require 'bike'

describe DockingStation do
  #   it 'should respond to method release_bike' do
  #     expect(subject).to respond_to(:release_bike)
  #   end
  

  describe '#release_bike' do
  it { should respond_to(:release_bike) }
  
  it 'release_bike should raise error if there is no bike' do
    #bike = Bike.new
    #subject.dock_bike(bike)
    expect{ subject.release_bike }.to raise_error 'No bikes available'
  end
  it 'only releases working bikes' do
    docking_station = DockingStation.new
    bike1 = Bike.new(false)
    docking_station.dock_bike(bike1)
    bike2 = Bike.new
    docking_station.dock_bike(bike2)
    bike3 = Bike.new(false)
    docking_station.dock_bike(bike3)
    expect(docking_station.release_bike).to eq bike2
  end
 
  describe '#dock_bike' do
  it 'should respond to method dock_bike' do
    expect(subject).to respond_to (:dock_bike)
  end

  it 'method dock_bike should store bike object' do
    bike = Bike.new
    array = []
    expect(subject.dock_bike(bike, false)).to eq array.push(bike)
  end
end
  

  it 'Should throw error if at max capacity' do
  DockingStation::DEFAULT_CAPACITY.times {
  subject.dock_bike(Bike.new)
  }
  expect{subject.dock_bike(Bike.new)}.to raise_error 'The docking station can only hold 20 bikes'
  end
  
  
  it 'checks if bike is available' do
    array = []
    bike = Bike.new
    array.push(bike)
    subject.dock_bike(bike)
    expect(subject.release_bike).to eq array.pop
  end
  end

  it 'Accepts custom capacity on creation or defaults to 20' do
    docking_station = DockingStation.new
    expect(docking_station.capacity).to eq 20
    docking_station2 = DockingStation.new(30)
    expect(docking_station2.capacity).to eq 30
  end



end
