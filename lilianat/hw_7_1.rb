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