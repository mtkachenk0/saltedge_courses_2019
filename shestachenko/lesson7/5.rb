#Write a program that accepts a sentence and calculate the number of upper case letters and lower case letters.
def problem5(a)
puts "UPPER CASE #{a.scan(/[A-Z]/).size}"
puts "UPPER CASE #{a.scan(/[a-z]/).size}"
end

puts "insert words"
x = gets.chomp.to_s
problem5(x)
