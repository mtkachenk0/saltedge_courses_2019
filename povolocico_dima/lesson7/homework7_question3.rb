# Write a program which accepts a sequence of comma-separated numbers from console and returns a list
# which contains every number.
# Input: 34,67,55,33,12,98, Output: ['34', '67', '55', '33', '12', '98']
# Hint: Use gets method

def list(a)

	list = a.split(/,/)
	string = list.each do |word|
		"'" + word.to_s + "'"
	end
	puts string.to_s.delete(' ')
end
list(gets.chomp)