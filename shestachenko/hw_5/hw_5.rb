# Задача №1
x = 21
if  x > 0 && x < 21
puts "podiezd 1"
elsif x > 20 && x < 48
puts "podiezd 2"
elsif x > 49 && x < 91
puts "podiezd 3"
else
puts "nicego"
end

#Задача №2
y = 17
if y > 0 && y <= 2
  puts "nadbavka 0%"
elsif y > 2 && y <= 10
  puts "nadbavka 10%"
elsif y > 10 && y <= 20
  puts "nadbavka 20%"
elsif y > 20
  puts "nadbavka 25%"
else
  puts "oshibka"
end

#Задача №3
login = :petr
password = "b5678"

b = {ivan:334455, alex:777, petr:"b5678"}
if login == b.keys[0] && password == b.values[0] || login == b.keys[1] && password == b.values[1] || login == b.keys[2] && password == b.values[2]
  puts "welcome"
else
  puts "incorrect"
end
