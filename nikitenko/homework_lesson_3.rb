puts -123.odd?
puts 6893.next
puts 0.pred
puts (12.to_f/4.5).ceil
puts (28%6*4.7).floor
puts "Brand new bicycle\r\n".chop
puts "Brand new bicycle"[6..8]
puts "Brand new bicycle".delete("Brand new bicycle".split(" ").last)
puts "Brand new bicycle".split(" ").last=="bicycle"
puts "Brand new bicycle".index("w")
puts "I thought I knew everything before that night".partition("everything")
puts "Final result from Float/Integer part is: #{((-123.odd?)?1:0)+6893.next+0.pred+(12.to_f/4.5).round+(28%6*4.7).floor}"

