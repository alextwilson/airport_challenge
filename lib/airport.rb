class Airport

  attr_reader :hangar, :hangar_capacity

  DEFAULT_CAPACITY = 10

  def initialize(capacity = DEFAULT_CAPACITY)
    @hangar = []
    @hangar_capacity = capacity
    @weather_condition = nil
  end

  def land(plane)
    stormy_error = 'Due to current weather conditions planes cannot land'
    capacity_error = 'Planes cannot land due to a lack of hangar space'
    raise stormy_error if @weather_condition == :stormy
    raise capacity_error if @hangar.count >= @hangar_capacity
    @hangar << plane
  end

  def takeoff(plane)
    stormy_error = 'Due to current weather conditions all planes are grounded'
    raise stormy_error if @weather_condition == :stormy
    @hangar.delete(plane)
  end

end
