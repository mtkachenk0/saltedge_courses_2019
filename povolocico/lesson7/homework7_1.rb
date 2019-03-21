# Question:
# Write a method which will return all such numbers which are divisible by 7 but are not a multiple of 5,
# between given range (example: 1 and 100) (both included).
# The numbers obtained should be printed in a comma-separated sequence on a single line.
# Input: 1, 100, Output: "7,14,21,28,42,49,56,63,77,84,91,98"
puts "Please write two numbers"

def division(a, b)
	range = (a.to_i..b.to_i).to_a

	result = []

	range.each do |x|
		if x % 7 == 0 && x % 5 != 0
			result.push(x)
		end
	end
	puts '"' + result.map{|i| i.to_s}.join(", ") + '"'
end
division(gets.chomp, gets.chomp)
