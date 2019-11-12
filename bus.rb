class Bus

attr_reader :route_number, :destination

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive(noise)
    return noise
  end

  def passenger_count
    return @passengers.size
  end

  def pick_up(passenger)
    @passengers.push(passenger)
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def empty_bus()
    for passenger in @passengers
      @passengers.delete
    end
  end






end
