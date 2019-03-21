# Question:
# Write a method which can compute the factorial of a given number.
# Input: 8, Output: 40320
puts "Write the number to find out its factorial"

def factorial(a = 1, b)
	range = (a..b)
	result = range.inject(1, :*)
	puts result
end

factorial(gets.chomp.to_i)
