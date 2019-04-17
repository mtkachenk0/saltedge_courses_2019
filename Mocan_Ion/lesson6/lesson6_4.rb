puts "Give me a list of words, separated only by comma"
words = $stdin.gets.chomp

def turn_string_into_array(words)
  puts words.split(",").sort.join(",")
end

turn_string_into_array(words)
