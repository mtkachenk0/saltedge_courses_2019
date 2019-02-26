# even numbers should be multiplied, odd must be returned
def double_o(num)
  return num if num.odd?
     num * 2
  end
end

# returns "Hello Max", default value = Max, else Stasik
def greet(x = "Max")
  puts "Hello #{x}"
end

# return the result of multiplication of two numbers
def multiple(x, y)
  x * y
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

def bonus(year)
	print "Enter the work experience:"
	year = gets.chomp

	if year < 2
		print "The bonus is equal to 0%"
    elsif (year >= 3) && (year =< 10)
    	print "The bonus is equal to 10%"
    elsif (year > 10) && (year =< 20)
    	print 



def test
	puts "before block"
	yield if block_given?
	puts "after block"
end

test { puts "I'm in block" }
# before block
# I'm in block
# after block


def many_params(a, b = 1, *array, **kwargs, &block)
	puts a, b
	puts array
	puts kwargs
end

class Array
	def our_each(&block)
		for i in self
			yield i + 1
		end
	end
end
a = [1, 2, 3]
a.our_each { |element| puts element }	
# 2
# 3
# 4	

def each_second(a, &block)
	a.each_with_index do |value, index|
		yield value if index.odd?
	end
end

each_second([1, 2, 3, 4, 5, 6]) { |element| puts element }
# 2
# 4
# 6

def each_sorted_key(hash)
  hash.keys.sort.each { |element| yield element }
end

each_sorted_key({c: 1, a: 2, b: 3}) { |el| puts el }
# a
# b
# c

p = Proc.new { |el| puts el }
p.call("Hello-hello")
# Hello-hello

retries = 0
begin
  f = File.open(path, "r")
  f = f.read
rescue IOError => ex
  puts ex 
  sleep 1
  unless retries < 3
  	retries += 1
    retry
  end
else 

ensure
	f = f.close
end



