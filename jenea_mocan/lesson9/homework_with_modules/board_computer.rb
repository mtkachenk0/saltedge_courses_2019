class BoardComputer

	def initialize(name, weight, engine_volume, engine_petrol, tank_volume)
     @name 	         = name
   	 @weight	     = weight
   	 @engine_volume  = engine_volume
	 @engine_petrol  = engine_petrol
  	 @tank_volume    = tank_volume
	end

 	def average_consumption(weight, engine_volume)
		((@weight * @engine_volume * koeff)/1000).ceil(2)
	end

	def koeff
		if @engine_petrol == :diesel
			@weight / 1230.0
		else
			@weight / 700.0
		end
		koeff.round(2)
	end

	def fuel_ration(current_fuel_volume, tank_volume)
		current_fuel_volume.to_f / @tank_volume
	end

	def ttngs(current_fuel_volume, average_consumption)
		# 45l / 5.58 (l/100kn)
		((current_fuel_volume / average_consumption) * 100).to_i
	end

	def status

		{
			average_consumption: average_consumption,
			fuel_ration: fuel_ration(current_fuel_volume),
			ttngs: ttngs(current_fuel_volume)
		}
	end
end
require 'pry'

binding.pry
puts 1