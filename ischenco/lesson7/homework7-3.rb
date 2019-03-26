def numbers(num)
  print num.chomp.split(',')
end
puts "Input your numbers"
numb = gets
numbers(numb)
