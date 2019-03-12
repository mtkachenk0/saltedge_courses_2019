require 'json'

json = File.read('courses.json')
courses = JSON.parse(json)

def list(hash)
	first_names = hash.keys
  	last_names = hash.values
	first_names.product(last_names).map { |i| i.join (" ") }
end

puts list(courses)