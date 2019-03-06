=begin 
Each solution should be in a separate file that should ask to input data from STDIN and displays the result
into STDOUT.
- Your solution should be wrapped into a method (at least one for a file)

Question:
Write a method which will return all such numbers which are divisible by 7 but are not a multiple of 5,
between given range (example: 1 and 100) (both included).
The numbers obtained should be printed in a comma-separated sequence on a single line.

Input: 1, 100, Output: "7,14,21,28,42,49,56,63,77,84,91,98"
=end


def check_num(a, b)
	print "Enter two numbers to make a range"
	print "The first number must be greater than the second one. Please enter a new set of numbers" if a < b
	x = (a..b).to_a
	x.select do |n| if (n % 7 == 0) && (n % 5 != 0)
      print n
      end
    end

# print ",".join(n)

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

=begin
Question:
Write a program that accepts a comma separated sequence of words as input and
prints the words in a comma-separated sequence after sorting them alphabetically.
```
Input:
without,hello,bag,world
Output:
bag,hello,without,world
=end

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