#Functions (methods)
def Hello_World(a,b)
  return a+b
end
#return не обязателен, возвращается последнее значение

def test(a,b)
	return unless a.is_a?(Numeric) && b.is_a?(Numeric)
	a+b
end

def test2(a,b=10)
	return unless a.is_a?(Numeric) && b.is_a?(Numeric)
	a+b
end

test2(10)


#def test3(*a)
#	a.test3
#end

#test3(10,20,30)

def funct(a, b, **kwargs)
	puts a
	puts b
	puts kwargs
end

funct(1,2,:a=>1,:b=>2)

def funct1(a)
 return unless a.is_a?(Numeric) && a%2==0
 a*2
end

puts funct1(4)

def funct2(name = 'Max')
 puts "Hello " + name
end

funct2('Dasha')

def funct3(num1, num2)
	return unless num1.is_a?(Numeric) && num2.is_a?(Numeric)
	num1*num2
end

puts funct3(2,5)	

def funct4(years)
	if years>=0 && years<=2
   "Your Nadbavka is 0% "
elsif years>=3 && years<=10
   "Your Nadbavka is 10%"
elsif years>=11 && years<=20
   "Your Nadbavka is 20%"
elsif years>=21
   "Your Nadbavka is 25%"
else 
   "Please enter the positive number!!!"
end
end

puts funct4(-3)
puts funct4(4)
puts funct4(13)

def funct5
	puts "before block"
	yield 15 if block_given?
	puts "after block"
end

funct5 {|i| puts i}

def many_params(a,b=1,*array,**kwargs, &block)
	puts a,b
	puts array
	puts kwargs
end


#объект proc почти тоже самое что и блок

#создадим свой each
class Array
	def our_each(&block)
		for i in self
			yield i+1
		end	
	end
end	

a=[1,2,3]
a.our_each {|elem| puts elem}

def each_second(arr,&block)
	arr.each_with_index do |value,index|
		yield value if index.odd?
	end
end	

each_second([1,2,3,4,5,6,7,8,9,10]) {|elem| puts elem}

def each_second2(arr)
	arr.each_with_index do |value,index|
		yield value if index.odd?
	end
end	

each_second2([1,2,3,4,5,6,7,8,9,10]) {|elem| puts elem}

def each_second3(arr)
	arr.each_with_index do |value,index|
		yield value if block_given? && index.odd? 
	end
end	

each_second3([1,2,3,4,5,6,7,8,9,10])

def each_sorted_key(hash) 
	hash.keys.sort.each {|elem| yield elem } 
end

each_sorted_key({c: 1, a: 2, b: 3}) {|elem| puts elem}
p=Proc.new {|elem| puts elem}
p.call("hello world")

# try-catch
# begin
# ..
# rescue [тип ошибки]
# отлавливаем ошибку
# raise exception
# end
# Изучить работу с файлами и исключения ДОМА!!!?????
# Sleep