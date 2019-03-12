require 'json'
require 'facets/array'

# Parsin the JSON file
file = File.read('names.json')
data_hash = JSON.parse(file)

# Creating two separate arrays with names and surnames
key_values = data_hash.keys
data_values = data_hash.values

# Making all the combinations between the two arrays
# Then transforming it intro string, and blahblah
names_array = key_values.product(data_values)
names_string = names_array.to_s
parsed_string = JSON.parse(names_string)

File.open('mixed_names.json',"w") do |f|
	f.write(JSON.pretty_generate(parsed_string))
end









