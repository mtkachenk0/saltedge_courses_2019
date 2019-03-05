require_relative "bort_computer"

class Car
  include BortComputer

  def initialize(name, weight, engine_volume, engine_petrol, tank_volume)
    @name = name
    @weight = weight
    @engine_volume = engine_volume
    @engine_petrol = engine_petrol
    @tank_volume = tank_volume
  end

  def ride
    puts "I ride"
  end
end
