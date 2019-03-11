require_relative "./board_computer.rb" # use relative path

class AlfaRomeoBoardComputer < BoardComputer
	MARK = "Alfa Romeo"

	def koeff # creepy version
		divider = @engine_petrol == diesel ? 2 : 1.5
		super / 2
		end
		koeff.round(2)
	end

	def koeff
		if @engine_petrol == :diesel
			super / 2
		else
			super / 1.5
		end
		koeff.round(2)
	end


require 'pry' # can be used to access "gems" 
alfa = AlfaRomeoBoardComputer.new("159", 1610, 1.9, :diesel, 70)
binding.pry
puts 1
