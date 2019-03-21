module BortComputer
  def average_consumption
    ((@weight * @engine_volume * koeff) / 1000).ceil(2)
  end

  def fuel_ratio(current_fuel_volume)
    current_fuel_volume.to_f / @tank_volume
  end

  def ttngs(current_fuel_volume)
    ((current_fuel_volume / average_consumption) * 100).to_i
  end

  def status
    current_volume = rand(0..@tank_volume)
    {
      average_consumption: average_consumption,
      fuel_ratio: fuel_ratio(current_volume),
      ttngs: ttngs(current_volume)
    }
  end
end
