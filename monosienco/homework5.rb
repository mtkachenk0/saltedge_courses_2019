# Problem 1
puts"Nr. 1"
num = 36

if num >= 1 && num <= 20
 puts"It is first pod'ezd"
elsif num >= 21 && num <= 48
 puts"It is second pod'ezd"
elsif num >= 49 && num <= 90
 puts"It is third pod'ezd"
else 
   puts"Get out!!!"
end

puts"\nNr. 2"
years=10
if years >= 0 && years <= 2
 puts"Nadbavka is 0%"
elsif years >= 3 && years <= 10
 puts"Nadbavka is 10%"
elsif years >= 11 && years <= 20
 puts"Nadbavka is 20%"
elsif years >= 21
 puts"Nadbavka is 25%"
else 
   puts"Enter positive number!"
end

puts"\nNr. 3"
login = "alex"
password = "777"

if (login == "ivan" && password == "334455") || (login == "alex" && password == "777") || (login == "petr" && password == "b5678")  
 puts"Dobro pojalovati!"
else 
   puts"Error!"
end
