#Write a program which accepts a sequence of comma-separated numbers from console and returns a list which contains every number.
#Input: 34,67,55,33,12,98, Output: ['34', '67', '55', '33', '12', '98']
#Hint: Use gets method


def problem3(x)
	x = x.split(",")
end

puts "insert sequence of comma-separated numbers"
b = gets.chomp.to_s

puts problem3(b)