# problem 1
# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
puts("\nProblem 1____________________________________________")
# one line version
arr = (1..10).to_a
(arr.each { |i| puts i})
puts("\n - - - -  - -  - - - -")
# multi-line version
arr.each do |i|
  puts i
end
puts("\nProblem 2____________________________________________")
# problem 2
#Same as above, but only print out values greater than 5.

# one line version
(arr.each { |i| puts i if i > 5})
puts("\n - - - -  - -  - - - -")
# multi-line version
arr.each do |i|
  puts i if i > 5
end

puts("\nProblem 3____________________________________________")
# problem 3
# Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
# one line version
p (new_arr = (arr.select { |item| item.odd? }))
puts("\n - - - -  - -  - - - -")
# multi-line version
new_arr = arr.select do |i|
  puts i if ((i.odd?)? 1:0 ) == 1
end

puts("\nProblem 4____________________________________________")
# Probmlem 4
# Append "11" to the end of the original array. Prepend "0" to the beginning.
arr << 11
arr.unshift(0)
p(arr)

puts("\nProblem 5____________________________________________")
# Probmlem 5
#Get rid of "11". And append a "3".
arr[-1] = 3
p(arr)

puts("\nProblem 6____________________________________________")
# Probmlem 6
# Get rid of duplicates without specifically removing any one value.
p (arr.uniq)

puts("\nProblem 7____________________________________________")
# Probmlem 7
# What's the major difference between an Array and a Hash?
puts("Arrays are ordered (integer-indexed collections), but Hash is a collection of key-value pairs")

puts("\nProblem 8____________________________________________")
# Probmlem 8
#Create a Hash using both Ruby syntax styles.
my_hash = {:name => "Anastasia", :age => 22, :sex => "F"}
p("First way: " + my_hash.to_s)
puts("\n")
one_more_hash = {a:1, b:2, c:3}
p("Second way: " + one_more_hash.to_s)
puts("\n")
one_more_hash2 =  Hash.new
one_more_hash2[:one] = 1
one_more_hash2[:two] = 2
one_more_hash2[:three] = 3
p("Third way: " + one_more_hash2.to_s)

puts("\nProblem 9____________________________________________")
# Probmlem 9
# Suppose you have a hash h = {a:1, b:2, c:3, d:4}
# Get the value of key `:b`.
h = {a:1, b:2, c:3, d:4}
p("Using access by key: " + h[:b].to_s + ", using method 'values_at' (return array): " + (h.values_at(:b)).to_s)

# Add to this hash the key:value pair `{e:5}`
puts("\nAdded new element")
p(h.merge!({e:5}))

# Remove all key:value pairs whose value is less than 3.5
puts("\nRemoved pairs whose value is less than 3.5")
# one line version
h.delete_if { |k, v| v < 3.5}
p(h)
# multi-line version
h.delete_if do |k, v|
  v < 3.5
end
p(h)

puts("\nProblem 10____________________________________________")
# Probmlem 10
# Can hash values be arrays? Can you have an array of hashes? (give examples)
my_hash = {a:1, b:2, c:3, d:4}
p(my_hash.keys)
p(my_hash.values)

puts("\nProblem 12____________________________________________")
# Probmlem 12
# Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"] = {:email => contact_data[0][0], :address => contact_data[0][1], :tel => contact_data[0][2]}
contacts["Sally Johnson"] = {:email => contact_data[1][0], :address => contact_data[1][1], :tel => contact_data[1][2]}

p(contacts)

puts("\nProblem 13____________________________________________")
# Probmlem 13
# Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?

p(contacts["Joe Smith"][:email])
p(contacts["Sally Johnson"][:tel])


puts("\nProblem 15____________________________________________")
# Probmlem 15
#Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
p(arr.delete_if {|i| i.start_with?("s")})

# Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
p(arr.delete_if {|i| i.start_with?("s") or i.start_with?("w")})

puts("\nProblem 16____________________________________________")
# Probmlem 16
# Take the following array:

a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']

p(a)
puts("\n")
# and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method. 
new_arr = (a.map {|i| i.split(" ")}).flatten
p(new_arr)

