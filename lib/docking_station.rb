# require './lib/bike'

class DockingStation
  def initialize(capacity = DEFAULT_CAPACITY)
  @bikes = []
  @capacity = capacity
  end

  DEFAULT_CAPACITY = 20
  attr_reader :capacity

  def release_bike
    empty?
    @bikes.pop
  end

  def dock_bike(bike)
  full?
  @bikes.push(bike)
  end

  private

  def full?
    fail 'The docking station can only hold 20 bikes' if @bikes.length == @capacity
  end

  def empty?
    fail 'No bikes available' unless @bikes.length > 0
  end



  #def bike
    #@bike
  #end
end

