=begin 
Question:
Write a method which can compute the factorial of a given number.

Input: 8, Output: 40320
=end

def factorial(n)
	print "Enter a number:"
	n = gets.chomp
	print (1..n).inject(:*)
end


def fact(x)
	if x == 0
		return 1
	return x * fact(x - 1)
x = int(raw_input())
print fact(x)