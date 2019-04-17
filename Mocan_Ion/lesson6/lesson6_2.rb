print "Give me a number: "
n = $stdin.gets.chomp.to_i

def fact(n)
 if n == 0
  1
 else
  if n> 0
   n * fact(n-1)
  else
   puts "no factorial for #{n} number"
  end
end
end

puts fact(n)
