puts -123.odd?
puts 6893.next
puts 0.pred
puts (12.to_f / 4.5).round
puts (28 % 6 *4.7).round
puts "Brand new bicycle\\r\\n"
puts "Brand new bicycle"[6..8]
puts "Brand new bicycle"[/(.*)\s/,1]
puts "Brand new bicycle".split.last.include?('bicycle')
puts "Brand new bicycle".index('w')
puts "I thought I knew everything before that night".partition(/everything/)
puts "Final result from Float/Integer part is:\n#{-123.odd?},\n#{6893.next},\n#{0.pred},\n#{(12.to_f / 4.5).round},\n#{(28 % 6 *4.7).round}"
