def sentence(sent)
	puts "UPPER CASE: #{sent.scan(/[A-Z]/).length}"
	
	puts "LOWER CASE: #{sent.scan(/[a-z]/).length}"
end
puts "input sentence"
input = gets.chomp
sentence(input)