
def factorial(arr=10)
	if arr>1
		arr=(1..arr).to_a
		cont =1
		arr.each do |v|
		cont=cont*v 
		puts cont
	end
	else 
		puts "insert bad number"
	end
end

puts "insert a number"
x = gets.chomp.to_i
factorial(x)



















