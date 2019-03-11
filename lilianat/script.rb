require 'pry'
require 'json'

students = File.open("students.json")
data = JSON.parse(students)
binding.pry


# def save_to_file
	#File.open("results.json", "w+") {|f| f.write(students) }
  #end
#end