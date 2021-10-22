# require './lib/bike'

class DockingStation

  attr_reader :bike

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock_bike(bike)
  
  fail 'The docking station can only hold 1 bike' if @bike
  @bike = bike
  end

  #def bike
    #@bike
  #end
end

#Challenge 11 step 4. Read up on instance variables and attr_reader.