puts "Give me a range:"
print "min: "
min = $stdin.gets.chomp.to_i
print "max: "
max = $stdin.gets.chomp.to_i

def divisible_multiple(min, max)
  (min..max).each do |i|
    puts i if (i % 7 == 0) && (i % 5 != 0)
  end
end

divisible_multiple(min, max)
