class DockingStation
  MAX_CAPACITY = 20
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    raise 'Docking station empty' if empty_station? # guard condition
    @bikes.pop
  end

  def dock(bike)
    raise 'Docking station is full' if full_station? # guard condition
    @bikes << bike
  end

  private

  def empty_station?
    @bikes.empty?
  end

  def full_station?
    @bikes.count >= MAX_CAPACITY
  end
end
