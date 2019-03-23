#Write a method which can compute the factorial of a given number.
#Input: 8, Output: 40320


def fact(n)
	if n == 0
		1
	elsif n > 0
		n * fact(n-1)
	else
		puts "no factorial for this number"
	end
end


puts "Enter number"
x = gets.chomp.to_i
puts "factorial #{x} = #{fact(x)}"
