
=begin
Задача №1
В первом подъезде квартиры с 1 по 20. Во втором с 21 по 48. В третьем с 49 по 90. 
Пользователь вводит номер квартиры. 
Программа должна указать в каком подъезде находится данная квартира.
=end

puts "Please enter the number of your apartment (1-90):"
apart = gets.chomp

entrance_1 = (1..20).to_a
entrance_2 = (21..48).to_a
entrance_3 = (49..90).to_a

if entrance_1.include?(apart)
	print "You need the 1st entrance"
elsif entrance_2.include?(apart)
	print "You need the 2nd entrance"
else 
	print "You need the 3rd entrance"
end
			
=begin
Задача №2
Создайте программу, которая выводит надбавку за стаж. 
Пользователь вводит стаж работы, а программа пишет ему надбавку.  
Стаж от  Стаж до   Надбавка
0        2 года    0%
3 лет    10 лет    10%
10 лет   20 лет    20%
20 лет   выше      25%
Учтите вариант ошибки – пользователь вводит отрицательное число.
=end

Inf = Float::INFINITY
newbie = (0..2).to_a
middle = (3..10).to_a
senior = (11..20).to_a
old crone = (20..Inf)

bonus = { 
	newbie => "0%",
	middle => "10%",
	senior => "20%",
	old crone => "25%"
    }
puts "Enter your work experience:"
years = gets.chomp
unless years >= 0 print "Please enter a positive number"






=begin
Задача №3
Пользователь вводит логин и пароль. 
Если логин и пароль совпадают с указанными ниже, то выводится «Добро пожаловать». 
Если не совпадают – то «Ошибка входа»
Логин   Пароль
ivan    334455
alex    777
petr    b5678
=end