require 'json'
require 'pry'

$stdout = File.open('output_file.rb', 'w')

read_file = open("names.json").read

names_json = JSON.parse(read_file)

names_array = names_json.to_a.flatten

first_names = []
second_names = []

names_array.each_with_index do |value, index|
	if index.even?
		first_names.push(value)
	elsif index.even? == false
		second_names.push(value)
	end
end

full_name = first_names.product(second_names)

puts full_name

#binding.pry

#puts 1
