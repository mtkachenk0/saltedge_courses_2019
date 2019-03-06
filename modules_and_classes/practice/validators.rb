require_relative 'errors'

module Validators
  def validate_name!
    return if @name.length > 0
    raise Error::Client::InvalidName.new("Name should containt at least one char")
  end

  def validate_password!(password)
    return if @password == password
    raise Error::Client::InvalidPassword.new("Passwords don't match")
  end
end
