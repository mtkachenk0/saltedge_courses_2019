#    Float/Integer
#
#    -123 - find out if it's odd?
puts -123.odd?
#    6893 - show what next number will be
puts 6893.next
#    0 - show the previous number
puts 0.pred
#    12 - cast it to float, then devide by 4.5 then round it up
puts (12.to_f/4.5).ceil
#    28 - call modulo by 6, then multiply result by 4.7 and round it down
puts (28.modulo(6)*4.7).floor

#     String

#    "Brand new bicycle\r\n" - remove trailing special characters
puts "Brand new bicycle\n\r".chomp
#    "Brand new bicycle" - using indexes extract "new"
puts "Brand new bicycle"[6..8]
#    "Brand new bicycle" - delete last word
puts "Brand new bicycle"[0..9]
#    "Brand new bicycle" - check if the sctring's last word is bicycle
puts "Brand new bicycle".end_with?("bicycle")
#    "Brand new bicycle" - find out what index the letter "w" has
puts "Brand new bicycle".index("w")
#    "I thought I knew everything before that night" - split the string in 3 parts
#    to get the following result: "I thought I knew ", "everything", "before that night"
puts "I thought I knew everything before that night".partition("everything")
#    "Final result from Float/Integer part is: " - using interpolation place the sum of all
#     results from first 5 examples to the end of string."
puts "Final result from Float/Integer part is: #{6894-1+3+18}"
