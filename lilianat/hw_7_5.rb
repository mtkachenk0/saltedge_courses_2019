=begin
Question:
Write a program that accepts a sentence and calculate the number of upper case letters and lower case letters.
```
Input:
Hello world!
Output:
UPPER CASE 1
LOWER CASE 9
=end

def letters(*string)
	print "Please enter a string:"
	s = gets.chomp
	u = 0
	l = 0
	m = s.split(" ")
	m.each do |x|
		if x == x.capitalize
			#u +=
		print u
	end
	l = m.count - u
	print "UPPER CASE #{u} /n LOWER CASE #{l}"

