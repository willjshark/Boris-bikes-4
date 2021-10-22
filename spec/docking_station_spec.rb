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

 
  describe '#dock_bike' do
  it 'should respond to method dock_bike' do
    expect(subject).to respond_to (:dock_bike)
  end

  it 'method dock_bike should store bike object' do
    bike = Bike.new
    array = []
    expect(subject.dock_bike(bike)).to eq array.push(bike)
  end
end
  

  it 'Should throw error if at max capacity' do
  20.times {
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


end
