puts "1) First problem :"
n_ap = 34
if n_ap>=1 && n_ap<=20
  puts "First entrance"
elsif n_ap>=21 && n_ap<=48
  puts "Second entrance"
elsif n_ap>=49 && n_ap<=90
  puts "Third entrance"
else 
  puts "It's not your home!!!"
end

puts "2) Second problem :"
years = 5
if years>=0 && years<=2
  puts "Your Nadbavka is 0% "
elsif years>=3 && years<=10
  puts "Your Nadbavka is 10%"
elsif years>=11 && years<=20
  puts "Your Nadbavka is 20%"
elsif years>=21
  puts "Your Nadbavka is 25%"
else 
  puts "Please enter the positive number!!!"
end

puts "2) Third problem :"
login = "alex1"
passw = "777"
if (login=="ivan" && passw=="334455") || (login=="alex" && passw=="777") || (login=="petr" && passw=="b5678")
  puts "Welcome to Home!"
else 
  puts "Error! Error! Error!"
end
