=begin
Question:
Write a program which accepts a sequence of comma-separated numbers from console and returns a list
which contains every number.
```
Input: 34,67,55,33,12,98, Output: ['34', '67', '55', '33', '12', '98']
Hint: Use gets method
=end

def sep_number(s)
	print "Enter a string of comma-separated numbers:"
	s = gets.chomp

	values = gets()
	l = values.split(" ")
