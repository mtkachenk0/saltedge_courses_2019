require 'pry'
class Bortovoi_comp
	attr_reader :massa, :engine_volume, :engine_petrol, :bak_volume
	def initialize(model,massa,engine_volume,engine_petrol,bak_volume)
		@model = model
		@massa = massa
		@engine_volume = engine_volume
		@engine_petrol = engine_petrol
		@bak_volume = bak_volume
	end

	def average_consumption
		(massa * engine_volume * coefficient / 1000).cell(2)
	end

	def coefficient
		if engine_petrol == :diesel
			massa / 1230.0
		elsif engine_petrol == :petrol
			massa / 700.0
		end
	end

	def fuel_lvl(current_volume)
		(current_volume.to_f / bak_volume).ceil(1)
	end

	def distance(current_volume)
		((current_volume / (average_consumption)) * 100).to_f
	end

	def status
		current_volume = rand(1..bak_volume)
		puts "I'm "


			