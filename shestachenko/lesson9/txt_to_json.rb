require 'json'


file = File.open("2.txt", "r")
arr = file.read
array = arr.split.to_a
d = Hash[*array]

file = File.new("names.json", "w")
file.puts d.to_json
file.close
