#Write a method which will return all such numbers which are divisible by 7 but are not a multiple of 5,
#between given range (example: 1 and 100) (both included).
#The numbers obtained should be printed in a comma-separated sequence on a single line.
#Input: 1, 100, Output: "7,14,21,28,42,49,56,63,77,84,91,98"

def problem1(a=1,b=100)
arr = (a..b).to_a
puts arr.select{|v| v % 7 == 0 && v % 5 != 0}.join(",")
end

puts "enter range"
x = gets.chomp.to_i
y = gets.chomp.to_i

problem1(x,y)

