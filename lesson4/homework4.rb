# problem 1
# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# one line version

arr.each {|x| puts x}

#multi line version

arr.each do |x|
	puts x
end

# problem 3
# Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

#one line version 

arr.select {|x| x.odd?}

#multi line version

arr.select do |x|
	x.odd?
end

# problem 4
# Append "11" to the end of the original array. Prepend "0" to the beginning.

# solution 1

arr.push(11).prepend(0)

# solution 2

(arr << 11).unshift(0)

# problem 5
# Get rid of "11". And append a "3".

# solution 1

arr.pop ; arr.push(3)

# solution 2

arr.pop ; arr << 3

# problem 6
# Get rid of duplicates without specifically removing any one value.

#solution

arr.uniq

# problem 7
# What's the major difference between an Array and a Hash?

# solution 

The major difference between an Array and Hash is that hash is unordered collection of any objects and contains key - value pair and array is ordered collection of any objects.

# problem 8
# Create a Hash using both Ruby syntax styles.

# one line version 

c = { key1: 'value_1'}

# multi line version

c = Hash.new
c[:key1] = 'value_1'

# problem 9
# Suppose you have a hash h = {a:1, b:2, c:3, d:4}
# 1. Get the value of key `:b`.

# 2. Add to this hash the key:value pair `{e:5}`

# 3. Remove all key:value pairs whose value is less than 3.5

h = {a:1, b:2, c:3, d:4}

# solution
# 1
h[:b]
# 2
h[:e] = 5
# 3
# one line version

h.delete_if{|key, value| value < 3.5}

# multi line version

h.delete_if do |key, value|
	value < 3.5
end

# problem 10
# Can hash values be arrays? Can you have an array of hashes? (give examples)

# solution 
Yes
# example
c = {a: ['value1', 'value2', 'value3'], b:[ 1, 2 , 3, 4]}

d = [{:key1 => 'value1'}, {:key2 => 'value2'}, {:key3 => 'value3'}]

# problem 12
# Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# solution 

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone_number] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone_number] = contact_data[1][2]

# problem 13
# Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?

#solution 

puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone_number]

# problem 15
# Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# one line solution 

arr.delete_if{|word| word.start_with?('s')}

# multi line solution

arr.delete_if do |word|
	word.start_with?('s')
end

# problem 16
# Take the following array and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

# one line solution 

a.map!{|words| words.split}.flatten!

# multi line solution

a = a.map{|words| words.split}
a = a.flatten
