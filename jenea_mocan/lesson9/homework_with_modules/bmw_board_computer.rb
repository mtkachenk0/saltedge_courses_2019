require_relative "./board_computer.rb" # use relative path

class BMWBoardComputer < BoardComputer
	MARK = "BMW"
end

require 'pry' # can be used to access "gems" 
bmw = BMWBoardComputer.new("5 e39", 1510, 3.0, :diesel, 60)
binding.pry
puts 1