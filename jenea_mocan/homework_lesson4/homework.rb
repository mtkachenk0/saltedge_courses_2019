# problem 1
# Use the each method of Array
# to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
# and print out each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |number| puts number }

# problem 3
# Now, using the same array, use the select method
# to extract all odd numbers into a new array.

new_array = arr.select { |number| number % 2 != 0 }
new_array

# problem 4
# Append "11" to the end of the original array.
# Prepend "0" to the beginning.

arr << 11
arr.unshift(0)

# problem 5
# Get rid of "11".
# And append a "3".

arr.pop
arr << 3

# problem 6
# Get rid of duplicates without specifically
# removing any one value.

arr.uniq

# problem 7
# What's the major difference between an Array and a Hash?

# The major difference between an array and a hash is that a hash contains a key value pair for referencing by key.

# problem 8
# Create a Hash using both Ruby syntax styles.

hash = {:name => 'jenea'} # <= old version
hash = {name: 'jenea'} # <= new version

# problem 9
# Suppose you have a hash h = {a:1, b:2, c:3, d:4}
# 1. Get the value of key `:b`.
# 2. Add to this hash the key:value pair `{e:5}`
# 3. Remove all key:value pairs whose value is less than 3.5

h = {a:1, b:2, c:3, d:4}

h[:b] #1
h[:e] = 5 #2
h.delete_if { |k, v| v < 3.5 } #3

# problem 10
# Can hash values be arrays?
# Can you have an array of hashes?
# (give examples)

# hash values as arrays
hash = {names: ['bob', 'joe', 'susan']}

# array of hashes
arr = [{name: 'bob'}, {name: 'joe'}, {name: 'susan'}]

# problem 12
# Given the following data structures. 
# Write a program that moves the # information 
# from the array into the empty hash that applies
# to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# problem 13
# Using the hash you created from the previous exercise,
# demonstrate how you would access Joe's email
# and Sally's phone number?

puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

# problem 14
# In exercise 12, we manually set the contacts
# hash values one by one. Now, programmatically loop
# or iterate over the contacts hash from exercise 12,
# and populate the associated data from the contact_data array.
# Hint: you will probably need to iterate over 
# ([:email, :address, :phone]), and some helpful methods
# might be the Array shift and first methods.

# Note that this exercise is only concerned with
# dealing with 1 entry in the contacts hash, like this:

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

# As a bonus, see if you can figure out how to make it work
# with multiple entries in the contacts hash.

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end


