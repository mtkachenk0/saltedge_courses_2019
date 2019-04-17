class Car
  attr_accessor :name, :engine_type, :engine_volume, :weight, :tank_volume, :current_fuel

  def initialize(name:, engine_type:, engine_volume:, weight:, tank_volume:, current_fuel:)
    self.name = name
    self.engine_type = engine_type
    self. engine_volume = engine_volume
    self.weight = weight
    self.tank_volume = tank_volume
    self.current_fuel = current_fuel
  end

  def coefficient
    if self.engine_type == "diesel"
      return (weight.to_f / 1230).round(2)
    else
      return (weight.to_f / 700).round(2)
    end
  end


  def average_fuel_consumption
    return ((weight * engine_volume * coefficient.to_f) / 100).round(2)
  end

  def fuel_to_tank_ratio
    return (current_fuel / tank_volume.to_f).round(2)
  end

  def till_next_gas_station
    (current_fuel / average_fuel_consumption.to_f).round(2)
  end

  def status
    return {
      name: self.name,
      engine_type: self.engine_type,
      engine_volume: self.engine_volume,
      weight: self.weight,
      tank_volume: self.tank_volume,
      current_fuel: current_fuel,
      "average fuel consumption": self.average_fuel_consumption,
      "coefficient": self.coefficient,
      "fuel to tank ratio": self.fuel_to_tank_ratio,
      "till the next gas station": self.till_next_gas_station
    }
  end

end

class AlfaRomeo < Car
  def coefficient
    if self.engine_type == "diesel"
      return (weight.to_f / 1230) / 2.0
    else
      return (weight.to_f / 700) / 1.5
    end
  end
end


bmw_1 = Car.new(name: "BMW 5 e39", engine_type: "diesel", engine_volume: 3.0, weight: 1510, tank_volume: 60, current_fuel: 30)
bmw_2 = Car.new(name: "BMW 7 e65", engine_type: "diesel", engine_volume: 3.0, weight: 2480, tank_volume: 84, current_fuel: 84)
alfa_romeo_1 = AlfaRomeo.new(name: "Alfa Romeo 159", engine_type: "diesel", engine_volume: 3.0, weight: 2480, tank_volume: 84, current_fuel: 84)
alfa_romeo_2 = AlfaRomeo.new(name: "Alfa Romeo gulia", engine_type: "gasoline", engine_volume: 2.9, weight: 1580, tank_volume: 58, current_fuel: 40)

puts bmw_1.status
puts bmw_2.status
puts alfa_romeo_1.status
puts alfa_romeo_2.status

=begin

BMW 5 e39, двигатель: 3.0 дизель, 1510кг, бак на 60л
BME 7 e65, двигатель: 3.0 дизель, 2480кг, бак на 84л

Альфа ромео 159, дизель 1.9, 1610кг, бак на 70
Альфа ромео gulia, бензин 2.9, 1580кг, бак на 58


=end
