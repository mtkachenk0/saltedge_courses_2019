#Write a program that accepts a comma separated sequence of words as input and
#prints the words in a comma-separated sequence after sorting them alphabetically.
#Input:
#without,hello,bag,world
#Output:
#bag,hello,without,world



def problem4(x)
	x = x.split(",")
    x.sort.join(",") 
end


puts "insert sequence of comma-separated words"
y = gets.chomp.to_s

puts problem4(y)