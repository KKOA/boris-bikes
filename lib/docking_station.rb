class Docking_Station

  attr_reader :bike
  def release_bike
    raise "Docking station empty" unless @bike #guard condition
    @bike
  end

  def dock(bike)
    raise "Docking staion is full" if @bike #guard condition
    @bike = bike
  end
end
