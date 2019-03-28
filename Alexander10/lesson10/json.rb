require 'json'

json = File.read('students.json')
students = JSON.parse(json)

def list(hash)
	first_names = hash.keys
  	last_names = hash.values
	first_names.product(last_names).map { |i| i.join (" ") }
end
puts list(students)