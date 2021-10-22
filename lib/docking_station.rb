# require './lib/bike'

class DockingStation
  def initialize
  @bikes = []
  end

  def release_bike
    fail 'No bikes available' unless @bikes.length > 0
    @bikes.pop
  end

  def dock_bike(bike)
  fail 'The docking station can only hold 20 bikes' if @bikes.length == 20 
  @bikes.push(bike)
  end

  #def bike
    #@bike
  #end
end

