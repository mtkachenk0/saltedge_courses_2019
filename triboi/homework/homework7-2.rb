def fact(n)
  (1..n).inject(1) {|r,i| r*i }
end
puts fact(8)  
