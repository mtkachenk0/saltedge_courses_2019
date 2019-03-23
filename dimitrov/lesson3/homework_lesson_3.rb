## Float/Integer

puts case1 = -123.odd? 

puts case2 = 6893.next 

puts case3 = 0.pred 

puts case4 = (12.to_f/4.5).round 

puts case5 = ((28.modulo(6))*4.7).round 

##String

puts "Brand new bicycle\r\n".chomp 

puts "Brand new bicycle".match ('new') 


puts a = "Brand new bicycle"
a = a.split
b = a.last
a.delete(b)
puts a = a.join(" ")

puts "Brand new bycicle".gsub('bycicle', '')


puts "Brand new bicycle".split.last



puts "Brand new bicycle".index('w')


puts "I thought I knew everything before that night".partition(/.everything/) 

puts "Final result from Float/Integer part is: #{case1}, #{case2}, #{case3}, #{case4}, #{case5}!"
