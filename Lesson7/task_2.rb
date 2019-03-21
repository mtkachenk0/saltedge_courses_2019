
def factorial(a)
	puts (1..a).inject(:*)
end

puts "insert a number"
x = gets.chomp.to_i
factorial(x)



















