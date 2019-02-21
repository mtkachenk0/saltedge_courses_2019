entrance1 = [1, 20]
entrance2 = [21, 48]
entrance3 = [49, 90]
a = 20
if a <= 20
	puts "1"
elsif a <= 48
	puts "2"
elsif a <= 90
	puts "3"
else 
	puts "unknown"
end

experience = 30
if experience >= 0 && experience <= 2
	puts "0%"
elsif experience >= 3 && experience < 10
	puts "10%"
elsif experience >= 10 && experience < 20
	puts "20%"
elsif experience >= 20 
	puts "25%"
end


a = { ivan: "334455", alex: "777", petr: "b5678" }
login = "ivan"
password = "334456"
if a[login.to_sym] == password
	puts "welcome"
else 
	puts "wrong credentials"
end
