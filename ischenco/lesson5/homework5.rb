#   Задача №1
# 	В первом подъезде квартиры с 1 по 20. Во втором с 21 по 48. В третьем с 49 по 90.
# 	Пользователь вводит номер квартиры. Программа должна указать в каком подъезде находится данная квартира.
puts "Enter entrance number"
num = gets.chomp.to_i
if num >= 1 && num < 21
	puts "Entrance 1"
		elsif num >= 21 && num < 49
			 puts "Entrance 2"
		elsif num >= 49 && num < 91
			 puts "Entrance 3"
		else puts "There are no Entrance"
end

# 	Задача №2
#  	Создайте программу, которая выводит надбавку за стаж.
# 	Пользователь вводит стаж работы, а программа пишет ему надбавку.
#		Стаж от  Стаж до   Надбавка
#		0        2 года    0%
#		3 лет    10 лет    10%
#		10 лет   20 лет    20%
#		20 лет   выше      25%
#		Учтите вариант ошибки – пользователь вводит отрицательное число.
puts "Enter your work experience:"
experience=gets.chomp.to_i
case experience
	when experience<0
		 puts "It's time to work"
	when experience<2
		 puts "Bonus 0%"
	when experience<10
		 puts "Bonus 10%"
	when experience<20
		 puts "Bonus 20%"
	else puts "Bonus 25%"
end

# 	Задача №3
# 	Пользователь вводит логин и пароль. Если логин и пароль совпадают с указанными ниже, то выводится «Добро пожаловать». Если не совпадают – то «Ошибка входа»
# 	Логин   Пароль
# 	ivan    334455
# 	alex    777
# 	petr    b5678
puts "enter login:"
login=gets.chomp.to_s
puts "enter password:"
pass=gets.chomp.to_s
if login=="ivan" && pass=="334455"
	 puts "Welcome Ivan"
elsif login=="alex" && pass=="777"
	puts "Welcome Alex"
elsif login=="petr" && pass=="b5678"
	puts "Welcome Petr"
else puts "Wrong credentials"
end
