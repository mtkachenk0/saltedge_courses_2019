#Write a method which can compute the factorial of a given number.
#Input: 8, Output: 40320


def fact(n)
 if n == 0
  1
 else
  if n > 0
   n * fact(n-1)

  else
   puts "no factorial for this number"
  end
end
end





 puts fact(45)


 def factorial(n)
 if n < 0
   return nil
 end
 value = 1
 while n > 0
   value = value * n
   n -= 1
 end
 return value
end
puts factorial(5)
#output would be
