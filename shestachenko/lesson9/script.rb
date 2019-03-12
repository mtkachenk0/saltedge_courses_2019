require 'json'

names = File.read("names.json")

names_hash = JSON.parse(names)

array_firstnames = names_hash.keys
array_lastnames = names_hash.values

names_new = []

array_firstnames.each do |first_name|
  if first_name == "Anastasia" || first_name == "Valeria" || first_name == "Alexandra"
    gender = "Woman"
  else
    gender = "Man"
  end
array_lastnames.each do |last_name|

names_new.push({first_name => last_name, "gender" => gender}, \n)
	end
end

file = File.new("script_names.json", "w")
file.print names_new.to_json
file.close
