def uppercase(n)
puts "UPPER CASE #{n.scan(/[A-Z]/).size}" 
puts "UPPER CASE #{n.scan(/[a-z]/).size}"
end

puts "Enter your string"
str = gets.chomp

uppercase(n)
