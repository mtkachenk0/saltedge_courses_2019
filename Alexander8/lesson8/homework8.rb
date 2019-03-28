require 'pry' 

class Vehicle

  attr_accessor :weight, :engine, :fuel_type, :fuel_tank, :fuel

  def initialize(weight, engine, fuel_type, fuel_tank, fuel = "40")
    @weight 	       = weight
    @engine	         = engine
    @fuel_tank	     = fuel_tank
    @fuel_type	     = fuel_type
    @fuel            = fuel
  end

  def avg_consum
    if fuel_type == "petrol" 
      (weight.to_i * engine.to_i * weight.to_i / 1230.0).to_i
    elsif fuel_type == "diesel" 
      (weight.to_i * engine.to_i * weight.to_i / 700.0).to_i
    else 
      puts "Unindentified fuel type"
    end
  end

  def fuel_level
    "#{(fuel.to_f * 100 / fuel_tank.to_f).to_i}%"
  end

  def fuel_left
    puts (fuel.to_i * 100 / avg_consum).to_f
  end

  def status
  
  end

end

class BMW < Vehicle

  def look
    puts "I look using my eyes with color #{@eyes_color}"
  end
end
    
class Alfa_Romeo < Vehicle
  
  def avg_consum
    if fuel_type == "petrol" 
      puts weight.to_i * engine.to_i * weight.to_i / (1230*2)
    elsif fuel_type == "diesel" 
      puts (weight.to_i * engine.to_i * weight.to_i / (700*1.5)).to_i
    else 
      puts "Unindentified fuel type"
    end
  end
end

BMW_5_e39 = BMW.new("1510", "3.0", "diesel", "60")
BMW_7_e65 = BMW.new("2480", "3.0", "diesel", "84")
Alfa_Romeo_159 = Alfa_Romeo.new("1610", "1.9", "diesel", "70")
Alfa_Romeo_Gulia = Alfa_Romeo.new("1580", "2.9", "petrol", "58")

binding.pry 
