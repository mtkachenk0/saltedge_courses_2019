require_relative 'errors.rb'

module Validators
	def validate_name!
		return if @name.length > 0
		raise Error::Client::InvalidName.new("Name should contain at least one char")
	end

	def validate_password!
		return if @password == password
		raise Error::Client::InvalidPassword.new("Password doesn't match")
	end
end