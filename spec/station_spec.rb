require_relative '../lib/docking_station'

describe DockingStation do
  #   it 'should respond to method release_bike' do
  #     expect(subject).to respond_to(:release_bike)
  #   end
  it { should respond_to(:release_bike) }
end
