def numbers(num)
  print num.chomp.split(",")
end
puts "input numbers"
input = gets
numbers(input)
