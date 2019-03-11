require_relative 'validators.rb'

class User
	include Validators
	def initialize(name, age, password)
		@name 		= name
		@age 		= age
		@password	= password
	end

	def mature?
		@age >= 18
	end
end
