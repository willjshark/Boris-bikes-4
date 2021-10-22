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
end
 
  describe '#dock_bike' do
  it 'should respond to method dock_bike' do
    expect(subject).to respond_to (:dock_bike)
  end

  it 'method dock_bike should store bike object' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end
  
  it { is_expected.to respond_to (:bike) }

  end

  it 'Should throw error if at max capacity' do
  bike = Bike.new
  subject.dock_bike(bike)
  expect{subject.dock_bike(bike)}.to raise_error 'The docking station can only hold 1 bike'
  end
  
  
  it 'checks if bike is available' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
  end


end

