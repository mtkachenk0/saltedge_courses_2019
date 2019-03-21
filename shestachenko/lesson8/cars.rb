require 'pry'
class Car
  attr_accessor :model, :engine, :fuel_type, :massa, :fuel, :fuel_volume
  def initialize (model, engine, fuel_type, massa, fuel, fuel_volume)
  @brand = self.class::BRAND
  @model = model
  @engine = engine
  @fuel_type = fuel_type
  @massa = massa
  @fuel = fuel
  @fuel_volume = fuel_volume
  end

  def koefficient
    if @fuel_type == "disel"
      puts @massa.to_f / 1230
    else
    puts @massa.to_f / 700
  end
  end


  def srt
    if @fuel_type == "disel"
    puts @massa.to_i * @engine.to_f * (@massa.to_f / 1230)
    else
    puts @massa.to_i * @engine.to_f * (@massa.to_f / 700)
  end
  end

  def sootnoshenie
    puts @fuel_volume.to_f / @fuel.to_f
  end

  def zapravka
    puts @fuel_volume.to_f / @srt.to_f
  end

  def status
    puts

  end
end

  class Bmw < Car
    BRAND = "Bmw"
  end

  class Alfa_Romeo < Car
    BRAND = "Alfa Romeo"

    def koefficient
      if @fuel_type == "disel"
        puts @massa.to_f / 1230 / 2
      else
      puts @massa.to_f / 700 / 1,5
    end
    end


    def srt
      if @fuel_type == "disel"
      puts @massa.to_i * @engine.to_f * (@massa.to_f / 1230 / 2)
      else
      puts @massa.to_i * @engine.to_f * (@massa.to_f / 700 / 1.5)
    end
    end

  end



bmw_5 = Bmw.new("e39", "3.0", "disel", "1510", "60", "30")
bmw_7 = Bmw.new("e65", "3.0", "disel", "2480", "84", "42")
alfa_159 = Alfa_Romeo.new("159", "1.9", "disel", "1610", "70", "35")
alfa_gulia = Alfa_Romeo.new("Gulia", "2.9", "benzin", "1580", "58", "29")
binding.pry

puts alfa_gulia.status
