#Problem 1. 

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# one line version
puts a.each { |x| puts x }

# multi-line version
puts a.each do |x|
  puts x
end

#Problem 3. 

a = [6, 7, 8, 9, 10]

# one line version
puts b = a.select {|x| x.odd? }

# multi-line version
b = a.select do |x|
x.odd?
end

#problem 4.
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# one line version
puts a.push(11).insert(0, 0)
#or
puts a.push(11).unshift(0) 

# multi-line version
puts a << 11
puts a.unshift(0)

#Problem 5.
a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

puts a.delete(11)
puts a << 3
#or
puts a.pop
puts a.push(3)

#Problem 6.
a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]

puts a.uniq

=begin
Problem 7.
What's the major difference between an Array and a Hash?

Arrays are ordered, integer-indexed collections of any object. Array indexing starts at 0, as in C or Java. 
A Hash is a collection of key-value pairs. It is similar to an Array, except that indexing is done via arbitrary keys of any object type, not an integer index. 
=end

#Problem 8.


hash = {:name => ‘Yuriy’} # <= old version
hash = {name: ‘Yuriy’} # <= new version

#Problem 9.
#Suppose you have a hash h = {a:1, b:2, c:3, d:4}

#1. 
puts h[:b]

#2. 
b = {e:5}
puts h.merge(b)
#or
puts h[:e] = 5

#3. 
h.delete_if {|key, value| value < 3.5 }

#Problem 10.

#Yes, hash values can be arrays.
h = {:d=>4, :e=>5, :g=>[1, 2, 3]}
b = [{:d=>4}, {:e=>6}]

#Problem 12.

#contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

#contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}


contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]


#Problem 13.
#Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?

puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

#Problem 15.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

puts arr.delete_if {|x| x.start_with?("s") == true }
puts arr.delete_if {|x| x.start_with?("s", "w") == true }  


#Problem 16.

a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']

puts a.map {|x| x.split }.flatten
