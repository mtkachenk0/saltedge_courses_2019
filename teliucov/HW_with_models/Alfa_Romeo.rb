require_relative "./bort_computer"

class BMWBortComputer < BortComputer
	MARK = "Alfa Romeo"
	def koeff
		divider = @engine_petrol == :diese ? 2 : 1.5
		super / devider
	end	
end

require 'pry'
alfa = BMWBortComputer.new("159", 1610, 1.9, :diesel, 60)
binding.pry
puts 1 