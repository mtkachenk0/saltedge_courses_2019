# homework4 
# `1, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 15, 16`

=begin
exercise1
Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
=end

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.each do |number|
  puts number
end

=begin
exercise3
using the same array from #2, use the select method to extract all odd numbers into a new array.
=end


my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array_odd = my_array.select do |number|
  number.odd? 
end
puts array_odd

=begin
exercise4
Append "11" to the end of the original array. Prepend "0" to the beginning.
=end

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array << 11
puts my_array
my_array
my_array.unshift(0)
puts my_array

=begin
exercise5
Get rid of "11". And append a "3".
=end

my_array.pop
my_array.push(3)
puts my_array

=begin
exercise6
Get rid of duplicates without specifically removing any one value.
=end

my_array.uniq
puts my_array

=begin
exercise7
What's the major difference between an Array and a Hash?
=end

puts 'The difference between an array and hash is that an array is ordered sequence of elements, but hash mainly is represented by key/value pairs'

=begin
exercise8
Create a Hash using both Ruby syntax styles.
=end

my_hash = {:key1 => 'value1', :key2 => 'value2'} 
my_hash = {key1: 'value1', key2: 'value2'}

=begin
exercise9
Suppose you have a hash h = {a:1, b:2, c:3, d:4}

=end
#1. Get the value of key `:b`.

puts h[:b]

#2. Add to this hash the key:value pair `{e:5}`

h[:e] = 5

puts h

#3. Remove all key:value pairs whose value is less than 3.5

h.delete_if do |k, v|
    v < 3.5
  end

puts h


=begin
exercise10
Can hash values be arrays? 
Can you have an array of hashes? (give examples)
=end

puts my_hash = {key: [1,2,3,4,5,6,7]}

puts 'So, ruby\'s synthax and structure permit hash values to be arrays'

=begin
exercise12
Given the following data structures. 
Write a program that moves the information from the array into the empty hash that applies to the correct person.
=end

contact_data =[["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith": {}, "Sally Johnson": {}}
contacts[:"Joe Smith"][:email] = contact_data[0][0]
contacts[:"Joe Smith"][:address] = contact_data[0][1]
contacts[:"Joe Smith"][:phone] = contact_data[0][2]
contacts[:"Sally Johnson"][:email] = contact_data[1][0]
contacts[:"Sally Johnson"][:address] = contact_data[1][1]
contacts[:"Sally Johnson"][:phone] = contact_data[1][2]

=begin
exercise13
Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
=end
puts "Joe's email is: #{contacts[:"Joe Smith"][:email]}"
puts "Saly's phone is: #{contacts[:"Saly Johnson][:phone]}"







