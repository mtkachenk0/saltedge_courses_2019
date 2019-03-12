homework 4


Problem 1. 
Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# one line version
puts a.each { |x| puts x }

# multi-line version
puts a.each do |x|
  puts x
end

Problem 3. 
Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

a = [6, 7, 8, 9, 10]

# one line version
b = a.select {|x| x.odd? }

# multi-line version
b = a.select do |x|
x.odd?
end

problem 4.
Append "11" to the end of the original array. Prepend "0" to the beginning.
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# one line version
puts a.push(11).insert(0, 0)
or
puts a.push(11).unshift(0) 

# multi-line version
puts a << 11
puts a.unshift(0)

Problem 5.
Get rid of "11". And append a "3".
a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]


puts a.delete(11)
puts a << 3
or
puts a.pop
puts a.push(3)

Problem 6.
Get rid of duplicates without specifically removing any one value.
a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]

a.uniq

Problem 7.
What's the major difference between an Array and a Hash?

Arrays are ordered, integer-indexed collections of any object. Array indexing starts at 0, as in C or Java. A negative index is assumed to be relative to the end of the array—that is, an index of -1 indicates the last element of the array, -2 is the next to last element in the array, and so on.
Массивы - это упорядоченные, целочисленные коллекции любого объекта. Индексирование массива начинается с 0, как в C или Java. Предполагается, что отрицательный индекс относится к концу массива, то есть индекс -1 указывает последний элемент массива, -2 - следующий за последним элементом в массиве и т.д.

A Hash is a collection of key-value pairs. It is similar to an Array, except that indexing is done via arbitrary keys of any object type, not an integer index. Hashes enumerate their values in the order that the corresponding keys were inserted.
Hashes have a default value that is returned when accessing keys that do not exist in the hash. By default, that value is nil. 
Хеш - это набор пар ключ-значение. Он похож на массив, за исключением того, что индексация выполняется с помощью произвольных ключей любого типа объекта, а не целочисленного индекса. Хеши перечисляют свои значения в том порядке, в котором были вставлены соответствующие ключи.
Хэши имеют значение по умолчанию, которое возвращается при доступе к ключам, которых нет в хэше. По умолчанию это значение равно нулю. 


Problem 8.
Create a Hash using both Ruby syntax styles.

hash = {:name => ‘Yuriy’} # <= old version
hash = {name: ‘Yuriy’} # <= new version

Problem 9.
Suppose you have a hash h = {a:1, b:2, c:3, d:4}

1. Get the value of key `:b`.
h[:b]

2. Add to this hash the key:value pair `{e:5}`
b = {e:5}
h.merge(b)
or
h[:e] = 5

3. Remove all key:value pairs whose value is less than 3.5
h.delete_if {|key, value| value < 3.5 }

Problem 10.
Can hash values be arrays? Can you have an array of hashes? (give examples)

Yes, hash values can be arrays.
h = {:d=>4, :e=>5, :g=>[1, 2, 3]}
b = [{:d=>4}, {:e=>6}]

Problem 12.
Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}


contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]


contacts["Joe Smith"] = contact_data[1] if 


Problem 13.
Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?

Joe's email     contacts["Sally Johnson"][:email]
Sally's phone number   contacts["Sally Johnson"][:phone]

Problem 15.
Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if {|x| x.start_with?("s") == true }
arr.delete_if {|x| x.start_with?("s", "w") == true }  


Problem 16.

Take the following array:

a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']

and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.


a.map {|x| x.split }.flatten
