# require './lib/bike'

class DockingStation
  def release_bike
    Bike.new
  end

  def dock_bike(bike)
   bike
  end
end

#Challenge 11 step 4. Read up on instance variables and attr_reader.