# You are required to, given a string, create a function that replace every letter with its position in the alphabet.

# If anything in the text isn't a letter, ignore it and don't return it.

# "a" = 1, "b" = 2, etc.

# Example:
# alphabet_position("The sunset sets at twelve o' clock.")
# Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" (as a string)

def replace(a)
	separation = a.split("")
	numbers = (1..26).to_a
	alphabet = ('a'..'z').to_a
	string = separation.map do |letter|
		if /[[:punct:]]/.match(letter)
			nil
		elsif /[[:word:]]/.match(letter) 
			alphabet.index(letter) + 1
		end
	end
	puts string.compact.to_s
end

replace(gets.chomp.downcase)
