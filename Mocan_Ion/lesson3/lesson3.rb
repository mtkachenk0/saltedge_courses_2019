puts "THE  FLOAT/INTEGER PROBLEMS \n \n" 

first_number = -123
puts "1. The number #{first_number} is odd" if first_number.odd?

second_number = 6893
puts "2. The number after #{second_number} is #{(second_number).next}"


third_number = 0
puts "3. The number before zero is #{third_number.pred}"


fourth_number = 12
puts "4. The result is #{(fourth_number.to_f/4.5).round}"


fifth_number = 28
puts "5. The result is #{(((fifth_number%6).to_f)*4.7).round}"


puts "THE STRING PROBLEMS \n \n" 

puts "1. #{"Brand new bicycle".strip}"

bicycle_string = "Brand new bicycle"
puts "2. The extracted word: #{bicycle_string[6..8]}"

puts "3. The phrase with the deleted last word is: #{(bicycle_string).sub("bicycle", "")}"

bicycle_array = %w{Brand new apple}
if bicycle_array[2] == "bicycle"
	puts "4. The last word is bicycle"
else
	puts "4. The last word is not bicycle"
end

long_phrase = "I thought I knew everything that night"

puts "5. The index of w is #{bicycle_string.index('w')}"

puts "6. The result is: #{"I thought I knew ,everything, last night".split(",")} "

puts "7. The sum of all results is #{first_number+((second_number).next)+(third_number.pred)+((fourth_number.to_f/4.5).round)+((((fifth_number%6).to_f)*4.7).round)}"












