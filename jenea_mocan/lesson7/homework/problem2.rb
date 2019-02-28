def factorial(num)
  (1..num).inject(:*)
end

puts "This program computes the factorial of a given number"
puts "Please enter a number"
puts factorial(gets.chomp.to_i)
