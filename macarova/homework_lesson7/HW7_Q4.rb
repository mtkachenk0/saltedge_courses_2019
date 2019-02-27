def words(w)
	puts w.split(",").sort
end
puts "input words"
input = gets.chomp
words(input)