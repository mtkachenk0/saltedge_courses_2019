require 'pry'
require_relative './bmw'
require_relative './alfa_romeo'

bmw = BMW.new("5 e39", 1510, 3.0, :diesel, 60)
alfa = AlfaRomeo.new("159", 1610, 1.9, :diesel, 70)
binding.pry
puts 1
