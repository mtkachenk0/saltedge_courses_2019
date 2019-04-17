require 'json'


# parsing JSON
file = File.read("students_names.txt")
names_hash = JSON.parse(file)

#creating two separate arrays with first names and last names
first_names = names_hash.keys
last_names = names_hash.values

full_names_array = first_names.product(last_names)
full_names_string = full_names_array.to_s
parsed_string = JSON.parse(full_names_string)

File.open('randomized_names.json', 'w') do |f|
  f.write(JSON.pretty_generate(parsed_string))
end
