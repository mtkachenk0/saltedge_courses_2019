# Задача №1
# В первом подъезде квартиры с 1 по 20. Во втором с 21 по 48. В третьем с 49 по
# 90. Пользователь вводит номер квартиры. Программа должна указать в каком
# подъезде находится данная квартира.

number = 900
if number.between?(1,20)
	puts "You're in the first podyezd"
elsif number.between?(21,48)
	puts "You're in the second podyezd"
elsif number.between?(49,90)
	puts "You're in the third podyezd"
else
	puts "You're on another planet"
end


# Задача №2
# Создайте программу, которая выводит надбавку за стаж.
# Пользователь вводит стаж работы, а программа пишет ему надбавку. 	

experience = 21
if experience >= 20
	puts "25% gain to the salary"
elsif experience >= 10
	puts "20% gain to the salary"
elsif experience >= 3
	puts "10% gain to the salary"
elsif experience >=0
	puts "no gain to the salary"
else
	puts "you introduced a wrong number"		
		
end

#Задача №3
#Пользователь вводит логин и пароль. Если логин и пароль совпадают с указанными ниже,
#то выводится «Добро пожаловать». Если не совпадают – то «Ошибка входа»

login = "petr"
password = "b5678"

if (login == "ivan") && (password == 334455)
	puts "Welcome to our website #{login}"
elsif (login == "alex") && (password == 777)
	puts "Welcome to our website #{login}"
elsif (login == "petr") && (password == "b5678")
	puts "Welcome to our website #{login}"
else
	puts "Error, you don't exist #{login}"
end




		
					
		


