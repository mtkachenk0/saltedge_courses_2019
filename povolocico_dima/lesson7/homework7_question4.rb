# Write a program that accepts a comma separated sequence of words as input and
# prints the words in a comma-separated sequence after sorting them alphabetically.
# Input:
# without,hello,bag,world
# Output:
# bag,hello,without,world
puts "Write words separated with comma"

def list(a)
	list = a.split(/,/).sort
	string = list.map do |word|
		word.to_s
	end.join(",")
	puts string.delete(' ')
end
list(gets.chomp.downcase)