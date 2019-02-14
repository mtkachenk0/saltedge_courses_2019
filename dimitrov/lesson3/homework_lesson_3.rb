## Float/Integer
puts case1 = -123.odd? ##1 `-123` - find out if it's odd or even?

puts case2 = 6893.next ##2 `6893` - show what next number will be

puts case3 = 0.pred ##3 `0` - show the previous number

puts case4 = (12.to_f/4.5).round ## `4. `12` - cast it to float, then devide by `4.5` round it up

puts case5 = ((28.modulo(6))*4.7).round ##5 `28` - call `modulo` by 6 multiply result by `4.7` and round it down

##String

puts "Brand new bicycle\r\n".chomp ##1 `"Brand new bicycle\r\n"` - remove trailing special characters

puts "Brand new bicycle".match ('new') ##2. `"Brand new bicycle"` - using indexes extract ` new `


puts a = "Brand new bicycle"
a = a.split
b = a.last
a.delete(b)
puts a = a.join(" ")
## 3. `"Brand new bicycle"` - delete last word

puts "Brand new bicycle".split.last
puts "Brand new bycicle".gsub('bycicle', '')
##4 `"Brand new bicycle"` - check if the sctring's last word is `bicycle`


puts "Brand new bicycle".index('w')
## 5. `"Brand new bicycle"` - find out what index the letter "w" has

puts "I thought I knew everything before that night".partition(/.everything/) 
## 6. `"I thought I knew everything before that night"` - split the string in 3 parts to get the following result: `"I thought I new "`, `"everything"`, `"before that night"`

puts "Final result from Float/Integer part is: #{case1}, #{case2}, #{case3}, #{case4}, #{case5}!"
## 7. `"Final result from Float/Integer part is: "` - using interpolation place the sum of all results from first 5 examples to the end of string.
