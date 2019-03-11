require 'json'

json = File.read('students.json')
students = JSON.parse(json)

def list(hsh)
	first_names = hsh.keys
  	last_names = hsh.values
	first_names.product(last_names).map { |i| i.join (" ") }
end

puts list(students)
