require 'json'

def get_combinations
	data = JSON.parse(File.read('students.json'))
	reviews = data["peoples"]
	new_arr = {}.to_a
	reviews.map do |hash1|
		reviews.map do |hash2|
			#puts "#{hash1['First name']} #{hash2['Last name']}"
			new_arr << {"First name" => hash1['First name'], "Last name" => hash2['Last name']}.to_h
		end
	end
	writing_json(new_arr)
end

def writing_json(arr_of_hashes)
	f = File.open('output.json','w')
	f.write(arr_of_hashes.to_json)
	f.close
end

get_combinations