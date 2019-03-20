=begin
5.times do 
  puts ("Nastea\n")
end
puts "\n"
5.times do |index| 
  puts ("Nastea#{index}")
end

puts "\n"

number=1
while number<10
 puts number
 number+=1
end


puts "\n"

number=1
while number<10
 puts number
 break if number==5
 number+=1
end


puts "\n"
arr=(1..10).to_a
arr.each do |i|
 puts arr[i-1]
end

h = {"a":1, "b":2, "c":3}
h.each do |k, v|
  puts k
end

h = {"a":1, "b":2, "c":3}
h.each_pair do |var|
  p(var)
end

h.each_value do |val|
  p(val)
end

h.each_key do |key|
  p(key)
end

arr = ["a", "b", "c"]
arr.map do |str|
  puts str+"lalalabla"
end




arr = ["a", "b", "c"]
aar1 = arr.map do |str|
  puts str+"lalalabla"
end


h = {"a":1, "b":2, "c":3}
new_h = h.map do |k,v|
  [k,v+10]
end.to_h
 p new_h 


h.map! do |k,v|
  [k,v+=10]
end.to_h
p h

 arr=["apple", "orange", "banana"]
 arr.map! do |i|
 	i.upcase
 end
 p arr


arr=["ann", "dasha", "criss"]

arr.select! {|v| v.include?("a")}
p arr


my_hash = {"a":2,"b":3, "c":4}
my_hash.select! do |k, v|
  v >= 3
end  

p my_hash

my_hash.reject! do |k, v|
  v != 3
end  

p my_hash

arr = ["bob", "criss", "daisy"]
p arr.index("bob")
arr = ["bob", "criss", "daisy"]
p arr.detect {|i| i.include?("a")}  # return first element == condition


my_hash = {"a":1,"b":2, "c":3}
puts my_hash.detect {|k, v|  k == :c && v == 3}


arr = [1,2,3,4,5]
p arr.all? {|i| i>0}
arr = [1,2,3,4,5]
p arr.none? {|i| i=0}

my_hash = {"a":2,"b":3, "c":4}

p my_hash.all? {|k,v| v.nil?}
p my_hash.all? {|value| value[1].nil?}
p my_hash.none? {|value| value[1].nil?}
=end


arr = (1..10).to_a
#p arr.map {|i| i+2}.select{|i| i.odd? }.all?{|i| i%3 == 0}

p arr.map {|i| i+5}.select{|i| i.even?}.all?{|i| i%2 == 0}
 


















