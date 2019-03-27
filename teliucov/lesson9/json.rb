require 'json'

@first_names = []
@last_names = []
File.open('imputs.txt').each do |line|
  full_name = line.split
  @first_names << full_name[0]
  @last_names << full_name[1]
end

@combined = {}
def name_randomizer
	@first_names.each_with_index do |f_name, f_index|
		@last_names.each_with_index do |l_name, l_index|
			combined_name = [f_name, l_name].join(' ')
			@combined["#{f_index}_#{l_index}"] = combined_name
			# combined_name = [f_name, l_name].join(" ")
			# @combined << combined_name
			
		end
	end
	@combined
end
json_res = name_randomizer.to_json
File.open('res.json', 'w') do |f|
	f.write JSON.pretty_generate(name_randomizer)
end
puts name_randomizer