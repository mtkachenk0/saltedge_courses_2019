require 'pry'

class BortComputer

	def initialize(name, weight, engine_volume, engine_petrol, tank_volume, current_fuel_volume = 40)
     @name 	         = name
   	 @weight	     = weight
   	 @engine_volume  = engine_volume
	 @engine_petrol  = engine_petrol
  	 @tank_volume    = tank_volume
  	 @current_fuel_volume   = current_fuel_volume
	end

  	attr_accessor :name, :weight, :engine_volume, :engine_petrol, :tank_volume, :current_fuel_volume

	def koeff
		if @engine_petrol == :diesel
			koeff = @weight / 1230.0
		else
			koeff = @weight / 700.0
		end
		koeff.round(2)
	end

 	def average_consumption
		((@weight * @engine_volume * koeff)/1000).ceil(2)
	end

	def fuel_ration
		(@current_fuel_volume.to_f / @tank_volume).ceil(2)
	end

	def fuel_left
		((@current_fuel_volume / average_consumption) * 100).to_i
	end

	def status

		{
			average_consumption: average_consumption,
			fuel_ration: fuel_ration,
			fuel_left: fuel_left
		}
	end
end

class BMW < BortComputer
	MARK = "BMW"
end

class Alfa < BortComputer
	MARK = "Alfa Romeo"

	def koeff
		if @engine_petrol == :diesel
			koeff = super / 2
		else
			koeff = super / 1.5
		end
		koeff.round(2)
	end
end

bmw_5_e39 	= BMW.new("5 e39", 1510, 3.0, :diesel, 60)
bmw_7_e65 	= BMW.new("7 e65", 2480, 3.0, :diesel, 84)
alfa_159	= Alfa.new("159", 1610, 1.9, :diesel, 70)
alfa_gulia	= Alfa.new("gulia", 1580, 2.9, :petrol, 58)

binding.pry

1