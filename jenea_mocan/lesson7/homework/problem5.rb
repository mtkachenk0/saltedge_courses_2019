def upcase_downcase(string)
upper = string.scan(/[A-Z]/).length
lower = string.scan(/[a-z]/).length
puts "UPPER CASE #{upper}"
puts "LOWER CASE #{lower}"
end

puts "This program counts the ammount of upper case\nand lower case letters in your string"
puts "Write your string"
puts upcase_downcase(gets.chomp)

