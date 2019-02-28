def alphabet_position(string)
  string.delete(" ").chars.map { |i| i.upcase.ord - "A".ord + 1 }.join(" ")
end

puts "This program will replace every letter in your sentence with its position in the alphabet"
puts "Write your sentence"
puts alphabet_position(gets.chomp)
