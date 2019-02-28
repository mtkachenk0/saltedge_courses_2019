require 'pry'

class Human

	attr_accessor :name, :eye_color, :height, :weight

	def initialize(name, eye_color, height, weight)
		@gender = self.class::GENDER
		@name = name
		@eye_color = eye_color
		@height = height
		@weight = weight
	end

    def self.stay
    	puts "I stay"
    end	

	def breathe
		puts "I breathe"
	end

	def walk
		puts "I walk"
	end

	def eat
		puts "I eat"
	end

	def look
		puts "I look"
	end
end

class Man < Human
	GENDER = "man"

	def initialize(race, *args)
		@race = race
		super(*args)
	end	

	def look
		puts "I look with my eyes of color #{@eye_color}"
	end
end	

class Woman < Human
	GENDER = "woman"

    def eat 
    	puts "I eat very much"
    end

oleg = Man.new("ukr", "Oleg", "green", "55", "3.5")
olea = Woman.new("Olea", "blue", "60", "5")
binding.pry
puts oleg
puts olea
end

# paradigms of ruby: inheritance, incaplsulation, polymorphism

# instances: attributes (@attr), methods (method), class (self class), self (self)
# class: attributes (@@attr), methods (self method), constants (CONSTANT), parent (<), self (self)  
# global: variables, constants
# class: attributes
# instance: attributes
# local: arguments, variables