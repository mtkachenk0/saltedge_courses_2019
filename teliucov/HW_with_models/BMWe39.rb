require_relative "./bort_computer"

class BMWBortComputer < BortComputer
	MARK = "BMW"
end

require 'pry'
bmw = BMWBortComputer.new("5 e39", 1510, 3.0, :diesel, 60)
binding.pry
puts 1 