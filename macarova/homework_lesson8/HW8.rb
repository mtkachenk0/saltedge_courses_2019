require 'pry'

class Car
  def initialize(name, engine_capacity, fuel_type, weight, tank)
    @name             = name
    @engine_capacity  = engine_capacity.to_f
    @fuel_type        = fuel_type
    @weight           = weight.to_f
    @tank             = tank.to_f
  end

  def coefficient
    if @fuel_type == "diesel" && @name.include?("alfa romeo")
      @weight / 1230 / 2
    elsif @fuel_type == "diesel" && !@name.include?("alfa romeo")
      @weight / 1230
    elsif @fuel_type == "petrol" && @name.include?("alfa romeo")
      @weight / 700 / 1.5
    elsif @fuel_type == "petrol" && !@name.include?("alfa romeo")
      @weight / 700
    else
      puts "Unknown"
    end
  end

  def fuel_consumption
    (@weight * @engine_capacity * coefficient).round(1)
  end

  def fuel_ratio (fuel_qnty)
    if fuel_qnty <= @tank
    (fuel_qnty / @tank).round(1)
    else
      "Error"
    end
  end
  
  def distance_to_refuel(fuel_qnty)
    if fuel_qnty <= @tank
    (fuel_qnty / fuel_consumption).round(1)
    else 
      "Error"
    end
  end

  def status
    {
      name:             @name, 
      engine_capacity:  @engine_capacity, 
      fuel_type:        @fuel_type, 
      weight:           @weight, 
      tank:             @tank,
      fuel_consumption: fuel_consumption
    }
  end
end

bmw5_E39         = Car.new("Bmw5 E39", "3.0", "diesel", "1510", "60")
bmw7_e65         = Car.new("Bmw7 e65", "3.0", "diesel", "2480", "58")
alfa_romeo_159   = Car.new("Alfa romeo 159", "1.9", "diesel", "1610", "70")
alfa_romeo_gulia = Car.new("Alfa romeo Gulia", "2.9", "petrol", "1580", "70")

binding.pry





