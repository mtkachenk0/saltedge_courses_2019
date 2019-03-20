# problem 1
# Use the each method of Array to iterate over [1,2,3,4,5,6,7,8,9,10]
# and print out each value.
arr1 = [1,2,3,4,5,6,7,8,9,10]
# one line version
arr1.each { |number| puts number}
# multi-line version
arr1.each do |number|
  puts number
end

# problem 3
# Using the same array, use the select method
# to extract all odd numbers into a new array.
# one line version
arr2 = arr1.select { |number| number.odd?}
# multi-line version
arr2 = arr1.select do |number|
  number.odd?
end

# problem 4
# Append "11" to the end of the original array. Prepend "0" to the beginning.
arr1.push(11)
arr1.unshift(0)

#problem 5
# Get rid of "11" and append a "3"
arr1.pop
arr1.push(3)

# problem 6 
# Get rid of duplicates without specifically removing any one value
arr1.uniq

# problem 7
# What's the major difference between an Array and a Hash?
puts "The array is ordered and each element consists of one value"
puts "Hash is unordered and contains a key value pair for referencing by key"

# problem 8
# Create a Hash using both Ruby syntax styles
# first version
hash1 = {:name => 'Daria'}
# second version
hash1 = {name: 'Daria'}

# problem 9 
# Suppose you have a hash
h = {a:1, b:2, c:3, d:4}
# Get the value of key `:b`
h[:b]
# Add to this hash the key:value pair `{e:5}`
h[:e] = 5
# Remove all key:value pairs whose value is less than 3.5
h.delete_if { |k,v| v < 3.5}

# problem 10
# Can hash values be arrays? Can you have an array of hashes?
# array of hashes :
arr_hash = [{lesson: 1}, {lesson: 2}, {lesson: 3}]
# hash values as arrays
hash1 = {lesson: [1,2,3]}

# problem 12
# Given the following data structures. Write a program 
# than moves the information from the array into the empty hash that applies 
# to the correct person
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:adress] = contact_data[0][1]
contacts["Joe Smith"][:phone_number] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:adress] = contact_data[1][1]
contacts["Sally Johnson"][:phone_number] = contact_data[1][2]

# problem 13
# Using the hash you created from the previous exercise,
# demonstrate how you would access Joe's email and Sally's pnone number?
puts "Joe's email: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number: #{contacts["Sally Johnson"][:phone_number]}"

# problem 15
# Use Ruby's Array method delete_if and String method start_with?
# To delete all of the words that begin with an 's' in the following array
arr = ['snow','winter','ice','slippery','salted roads', 'white trees']
# Then recreate the arr and get rid of all of the words that start with 's'
# or starts with 'w'
arr.delete_if { |word| word.start_with?('s')}
arr.delete_if { |word| word.start_with?('s','w')}

# problem 16
# Take the following array:
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
# and turn it into a new array that consists of strings containing one word.
# Look into using Array's map and flatten methods, as well as String's 
# split method
a = a.map { |pairs| pairs.split }
a = a.flatten
p a

