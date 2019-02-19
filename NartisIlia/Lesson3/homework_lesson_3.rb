# Float/Integer

puts (((-123%2).zero?) ? "чёт":"нечёт")         # Exercise 1

puts 6893.next                                  # Exercise 2

puts 0.pred                                     # Exercise 3

puts (12.to_f/4.5).round(2)                     # Exercise 4 var1

puts (12.to_f/4.5).ceil(1)                      # Exercise 4 var2

puts ((26%6)*4.7).floor                         # Exercise 5



# String

puts "Brand new bicycle\r\n".chomp                          # Exercise 1

puts "Brand new bicycle" [6..8]                             # Exercise 2

puts "Brand new bicycle" [0..-8]                            # Exercise 3 var1

puts "Brand new bicycle".sub("Brand new bicycle".split.last,"")  # Exercise 3 var2

puts "Brand new bicycle".delete_suffix(" bicycle")           # Exercise 3 var3

puts "Brand new bicycle".split.last.include?("bicycle")     # Exercise 4 var1

puts "Brand new bicycle".end_with?"bicycle"                 # Exercise 4 var2

puts "Brand new bicycle".index('w')                          # Exercise 5

puts "I thought I knew everything before that night".partition("everything").join(", ")  # Exercise 6

puts "Final result from Float/Integer part is: #{-123+6893+0+12+28}"   # Exercise 7

