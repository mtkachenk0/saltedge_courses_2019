#needed for the third task
require 'io/console'


#task 1
puts "TASK 1"
print "In what apartment do you live, from 1 to 100? "
apartment_number = gets.chomp.to_i
case apartment_number
when 1..20
  puts "You live in the first block"
when 21..48
  puts "You live in the second block"
when 49..90
  puts "You live in the third block"
else
  puts "You probably don't live here"
end


#task2
puts "-" * 20
puts "Task 2"
print "Please write how many years of experience you have: "
work_experience = gets.chomp.to_i

case work_experience.to_i
when 0..2
  puts work_experience.class
  bonus = 0
  puts "Unfortunately you get #{bonus} bonuses. Plese work some more"
when 3...10
  bonus = 10
  puts "Congrats! You get #{bonus}% bonus to your salary."
when 10..20
  bonus = 20
  puts "Congrats! You get #{bonus}% bonus to your salary."
when 20..100
  bonus = 25
  puts "Congrats! You get #{bonus}% bonus to your salary."
when -100..0
  puts "Wrong number. Please try again"
else
  puts "Something went wrong. Please write again a correct number"
end

#task 3
puts "-" * 20
puts "TASK 3"
print "Please write your name: "
name = gets.chomp
print "Please write your password: "
password = STDIN.noecho(&:gets).chomp

credentials = {name => password}

logins_and_passwords = {
  "ivan" => "334455",
  "alex" => "777",
  "petr" => "b5678"
}

if credentials[name] == logins_and_passwords[name]
  puts "\nWelcome!"
else
  puts "\nSomething went wrong, please try again"
end
