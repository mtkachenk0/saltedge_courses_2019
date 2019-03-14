require 'pry'
require 'json'


students = JSON.parse(File.read('students.json'))

names = []
surnames = []
sex = []
female = ["Liliana", "Valeria", "Daria", "Alexandra", "Ana-Maria", "Natalia"]

students.each do |x|
	h = x.to_h
	names << h["first_name"]
	surnames << h["last_name"]
	end

results = names.product(surnames)
a = JSON.pretty_generate(results)
File.open("results.json", "w+") do |f|
	f << a
	f.write(results)
	end

