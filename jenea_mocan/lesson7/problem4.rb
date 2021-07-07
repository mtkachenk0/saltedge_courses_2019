def sorting(str)
  str.split(',').sort
end

puts "This program will sort words in alphabetical order"
puts "Enter a sequence of comma separated words"
puts "#{sorting(gets.chomp)}"
