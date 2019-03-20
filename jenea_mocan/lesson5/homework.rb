# Задача №1
# В первом подъезде квартиры с 1 по 20. Во втором с 21 по 48.
# В третьем с 49 по 90. Пользователь вводит номер квартиры.
# Программа должна указать в каком подъезде находится данная квартира.

puts "Введите номер квартиры"
ap_number = gets.chomp.to_i

# enter appartment number
if ap_number < 21
	puts "Подъезд №1"
elsif ap_number < 49
	puts "Подъезд №2"
elsif ap_number < 91
	puts "Подъезд №3"
else
	puts "Введите номер от 1 до 90"
end

# Задача №2
# Cоздайте программу, которая выводит надбавку за стаж.
# Пользователь вводит стаж работы, а программа пишет ему надбавку.  
#   Стаж от  Стаж до   Надбавка
#   0        2 года    0%
#   3 лет    10 лет    10%
#   10 лет   20 лет    20%
#   20 лет   выше      25%
#   Учтите вариант ошибки – пользователь вводит отрицательное число.

puts "Введите свой стаж работы"
work_exp = gets.chomp.to_i
# enter working experience
if work_exp < 0
	puts "Вы ввели отрицательное число"
elsif work_exp < 2
	puts "Ваша надбавка 0%"
elsif work_exp < 10
	puts "Ваша надбавка 10%"
elsif work_exp < 20
	puts "Ваша надбавка 20%"
elsif work_exp >= 20
	puts "Ваша надбавка 25%"
else
	puts "Error"
end

# Задача №3
#Пользователь вводит логин и пароль. Если логин и пароль совпадают
# с указанными ниже, то выводится «Добро пожаловать».
# Если не совпадают – то «Ошибка входа»
#   Логин   Пароль
#   ivan    334455
#   alex    777
#   petr    b5678

puts "Введите login"
login = gets.chomp.to_s
# enter login
puts "Введите password"
password = gets.chomp.to_s
# enter password
if login == "ivan" and password == "334455"
	puts "Добро пожаловать"
elsif login == "alex" and password == "777"
	puts "Добро пожаловать"
elsif login == "petr" and password == "b5678"
	puts "Добро пожаловать"
else
	puts "Ошибка входа"
end

a = { ivan: "334455", alex: "777", petr: "password"}
puts "Введите login"
login = gets.chomp.to_s
# enter login
puts "Введите password"
password = gets.chomp.to_s
# enter password
if a[login.to_sym] == password && [login.to_sym] == login
	puts "Добро пожаловать"
else
	puts "Ошибка входа"
end


