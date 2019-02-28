# first task

def dev(a=1,b=100)
arr = (a..b).to_a
puts arr.select{|v| v%7==0&&v%5!=0}.join(",")
end

puts "enter range"
x= gets.chomp.to_i
y= gets.chomp.to_i

dev(x,y)



















