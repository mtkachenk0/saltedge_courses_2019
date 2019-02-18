## Float/Integer
## 1. '-123' - find out if it's odd or even?
first_ex = -123
result = -123.abs.even? ? "it's even" : "it's odd"
puts result

# 2. '6893' - show what next number will be
second_ex = 6893.next
puts second_ex

# 3. '0' - show the previous number
third_ex = 0.pred
puts third_ex

# 4. '12' - cast it to float, then devide by '4.5' round it up
fourth_ex = (12.to_f / 4.5.round).ceil
puts fourth_ex

# 5. '28' - call 'modulo' by 6 multiply result by '4.7' and round it down
 fifth_ex = (28.modulo(6) * 4.7.round).floor
 puts  fifth_ex

## String

#1. "Brand new bicycle\r\n" - remove trailing special characters
puts "Brand new bicycle\r\n".strip

#2. "Brand new bicycle" - using indexes extract 'new'
puts "Brand new bicycle"[6..8]

#3. "Brand new bicycle" - delete last word
puts "Brand new bicycle".sub("bicycle", "")

#4. "Brand new bicycle" - check if the sctring's last word is 'bycicle'
puts "Brand new bicycle".split.last == "bicycle"

#5. "Brand new bicycle" - find out what index the letter 'w' was
puts "Brand new bicycle".index "w"

#6. "I thought I knew everything before that night".split ("I thought I knew", "everything", "before that night")
# " I thought I new" , "everything", "before that night" # split the string in 3 parts to get the following result:
print "I thought I knew everything before that night".partition("everything")

#7. "Final recult from Float/Integer part is:" - using interpolation place the sum of all result from first 5 examples to the end of string.
sum = first_ex + second_ex + third_ex + fourth_ex + fifth_ex

puts "Sum of first 5 examples is: #{sum}"