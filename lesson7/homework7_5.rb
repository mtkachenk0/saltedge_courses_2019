# Write a program that accepts a sentence and calculate the number of upper case letters and lower case letters.
# Input:
# Hello world!
# Output:
# UPPER CASE 1
# LOWER CASE 9

def letters(a)
	separation = a.split("")
	uppercase = 0
	downcase = 0
	separation.each do |letter|
		if /[[:lower:]]/.match(letter)
			downcase += 1
		elsif /[[:upper:]]/.match(letter)
			uppercase += 1
		end
	end
	puts "UPPER CASE #{uppercase}"
	puts "LOWER CASE #{downcase}"
end

letters(gets.chomp)
