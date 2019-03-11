require 'json'

my_file = open("students.json")
json = my_file.read
students = JSON.parse(json)

firstnames = []
lastnames = []

students.each  do |student| 
	firstnames.push(student["name"])
	lastnames.push(student['lastname'])
end

pairs = []

firstnames.each do |first_name|
	lastnames.each do |last_name|
		pairs.push({'first_name' => first_name, 'last_name' => last_name})
	end
end

File.open("new_students.json","w") do |f|
  f.write(pairs.to_json)
end