# problem 1

number = gets.chomp.to_i
if number <= 20 && number > 0
	puts "The flat is in first entrance"
elsif number <= 48 && number > 0
	puts "The flat is in second entrance"
elsif number <= 90 && number > 0
	puts "The flat is in third entrance"
else 
	puts "Write number between 1 and 90"
end

# problem 2

bonus = gets.chomp.to_i

if bonus <= 2 && bonus > 0
	puts "Your bonus equals 0%"
elsif bonus < 10 && bonus > 0
	puts "Your bonus equals 10%"
elsif bonus < 20 && bonus > 0
	puts "Your bonus equals 20%"
elsif bonus >= 20
	puts "Your bonus equals 25%"
else puts "Enter your experience by number(above zero)"
end

# problem 3
# solution 1

puts "Please enter your login"

login = gets.chomp

if login == 'ivan' || login == 'alex' || login == 'petr'
	puts "Enter please your password"
		password = gets.chomp
end
	if password == '334455' && login == 'ivan' || password == '777' && login == 'alex' || password == 'b5678' && login == 'petr'
			puts 'Добро пожаловать'
	else puts "Ошибка ввода"
	
end

# solution 2

users = {'ivan' => '334455' , 'alex' => '777', 'petr' => 'b5678'}

puts "Enter your login"

login = gets.chomp

puts "Enter your password"

password = gets.chomp

if password == users["#{login}"]
	puts "Добро пожаловать"
else puts "Ошибка входа"
end

# solution 3


users = {'ivan' => '334455' , 'alex' => '777', 'petr' => 'b5678'}

puts "Введите логин"

login = gets.chomp
while users.key?("#{login}") != true
	puts "Неверный логин"
	login = gets.chomp
end

puts "введите пароль"
password = gets.chomp

if password == users["#{login}"]
	puts "Добро пожаловать"
else puts "Ошибка входа"
end
