def words(n)
	puts n.split(",").sort
end
puts "Input your words"
wrd = gets.chomp
words(wrd) 
