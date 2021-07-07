def div(min, max)
  (min..max).reject { |i| i % 5 == 0 }.select { |i| i % 7 == 0 }.join(", ")
end

puts "This programm will return numbers which are divisible by 7\nbut are not a multiple of 5, between given range"
puts "Enter minimal number"
a = gets.chomp.to_i
puts "Enter maximum number"
b = gets.chomp.to_i
puts div(a, b)

