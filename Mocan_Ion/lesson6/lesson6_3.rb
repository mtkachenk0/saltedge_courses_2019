puts "Give me a list of numbers, separated only by comma"
numbers_string = $stdin.gets.chomp

def turn_string_into_array(numbers_string)
  puts numbers_string.split(",").inspect
  # puts numbers_array.inspect
end

turn_string_into_array(numbers_string)
