array = ["aa","bb","cc"]
array.map do |value|
value + "la"
end



============
my_array = ["apple", "orange","banana"]
=> ["apple", "orange", "banana"]
my_array.map do |v|
1* v.upcase
1> end
=> ["APPLE", "ORANGE", "BANANA"]


================= select
my_array=["ana","bob","cris","dai"]
my_array.select { |word| word.include?("a")}
=> ["ana", "dai"]


======= index

my_array=["ana","bob","cris","dai"]
my_array.index("bob")
=> 1

========= detect
====1
my_array=["ana","bob","cris","dai"]
my_array.detect do |word|
word.include?("a")
=> "ana"
====2
my_array=["ana","bob","cris","dai"]
my_array.detect do |word|
word.include?("a")
=> "ana"

======

My_arr=[{"a" => 1}, {"b" =>2, "c" => 3}]
My_arr.detect do |value|
value.key.size > 1
end

====== all
arr = [1,2,3,4,5]
arr.all? do |value|
value > 0
end
=>true

====none
arr = [1,2,3,4,5]
arr.none? do |value|
value == 0
end
=>true

====
arr = [1,2,3,4,5]
arr.none? do |value|
value = nil
end

====== все ли элементы имеют ноль
my_hash = ["b" => 2, "c" => 3, "d" => 4]
my_hash.all? do |value|
value[1].nil?
end
=> false

my_hash = ["b" => 2, "c" => 3, "d" => 4]
my_hash.none? do |value|
value[1].nil?
end
=> false
================= добавить 2 и перезаписать массив
(1..10).to_a
arr=(1..10).to_a
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.map do |value|
 value += 2
 end
=> [3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

============
end.select do |value|
value.odd?
end.all? do |value|
value %3 == 0
end
arr.map do |value|
 value += 2
 end




=================
arr=(1..10).to_a
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.map {|value| value+=5}.select {|value| value.even?}.all?{|value| value %2 == 0}
=> true
