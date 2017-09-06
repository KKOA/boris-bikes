class Docking_Station

MAX_CAPACITY = 20
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    raise "Docking station empty" if @bikes == []#guard condition
    @bikes.pop
  end

  def dock(bike)
    raise "Docking station is full" if @bikes.count >=  MAX_CAPACITY #guard condition
    @bikes << bike
  end
end
