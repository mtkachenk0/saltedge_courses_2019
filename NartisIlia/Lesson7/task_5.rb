# fifth task

def caps(a)
puts "UPPER CASE #{a.scan(/[A-Z]/).size}" 
puts "UPPER CASE #{a.scan(/[a-z]/).size}"
end

puts "insert sequence"
x = gets.chomp.to_s

caps(x)
















