class Docking_Station

  attr_reader :bike
  def release_bike
    raise "message" unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end



end
