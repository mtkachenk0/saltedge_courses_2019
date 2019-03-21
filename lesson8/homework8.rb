require 'pry'

class Car

	attr_accessor :brand, :engine_type, :engine_capacity, :weight, :tank_capacity

	def initialize(brand, engine_type, engine_capacity, weight, tank_capacity)
		@brand 		 	 = brand
		@engine_type 	 = engine_type
		@engine_capacity = engine_capacity
		@weight 		 = weight
		@tank_capacity 	 = tank_capacity
	end

	def consumption
		k_diesel = @weight.to_f / 1230
		k_petrol = @weight.to_f / 700
		if (@brand == 'bmw_5' || @brand == 'bmw_7') && (@engine_type == 'diesel')
			cons = @weight * @engine_capacity * k_diesel
			cons.round(2)
		elsif (@brand == 'bmw_5' || @brand == 'bmw_7') && (@engine_type == 'petrol')
			cons = @weight * @engine_capacity * k_petrol
			cons.round(2)
		elsif (@brand == '159' || @brand == 'gulie') && (@engine_type == 'diesel')
			cons = @weight * @engine_capacity * k_diesel / 2
			cons.round(2)
		elsif (@brand == '159' || @brand == 'gulie') && (@engine_type == 'petrol')
			cons = @weight * @engine_capacity * k_petrol / 1.5
			cons.round(2)
		end
	end

	def fuel_tank(fuel_in_tank)
		fuel_tank_cons = fuel_in_tank / @tank_capacity.to_f
	end

	def distance_to_station(fuel_in_tank)
		distance = fuel_in_tank / consumption / 100 * 1000 #meters
	end

	def status(fuel_in_tank)
		current_capacity = rand(0..@tank_capacity)
		{
			consumption:				 consumption,
			fuel_tank:					 fuel_tank(current_capacity),
			distance_to_station: distance_to_station(current_capacity)
		}
	end

end


class Bmw < Car

end

class Alfa_romeo < Car

end


car1 = Bmw.new("bmw_5", "diesel", 3.0, 1510, 60)
car2 = Bmw.new("bmw_7", "diesel", 3.0, 2480, 84)
car3 = Alfa_romeo.new("159", "diesel", 1.9, 1610, 70)
car4 = Alfa_romeo.new("gulie", "petrol", 2.9, 1580, 58)


binding.pry

#puts car1

