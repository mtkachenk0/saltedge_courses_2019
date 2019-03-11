require 'json'

json = File.read('students_with_sex.json')
students = JSON.parse(json)

def list(hsh)
	first_names = hsh.keys
  	last_names = hsh.values
	first_names.product(last_names).shuffle.map { |i| i.join (" ") }
end

puts list(students)
