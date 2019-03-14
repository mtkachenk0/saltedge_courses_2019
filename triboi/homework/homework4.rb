#   1. Use the each method of Array to
#   iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
#   and print out each value.
arr=(1..10).to_a

#   one line version
arr.each{|number| puts number}
#   multi-line version
#arr.each do |number|
#  puts number
#end

#   3. Now, using the same array from #1, use the select method to extract all odd numbers into a new array.
#   one line version
new_array=arr.select{|number| number.odd?}
p new_array

#   multi-line version
#new_array = arr.select do |number|
#  number.odd?
#end

#    4. Append "11" to the end of the original array. Prepend "0" to the beginning.
arr << 11
arr.unshift(0)
print arr
puts
#    5. Get rid of "11". And append a "3".
arr.pop
arr << 3
p arr

#   6. Get rid of duplicates without specifically removing any one value.
#   Does not modify calling object
arr.uniq

#   Modifies the calling object
arr.uniq!

#   7. What's the major difference between an Array and a Hash?
puts "The major difference between an array and a hash is \nthat a hash contains a key value pair for referencing by key."

#   8. Create a Hash using both Ruby syntax styles.
hash = {:name => 'bob'} # <= old version
hash = {name: 'bob'} # <= new version

#   9. Suppose you have a hash h = {a:1, b:2, c:3, d:4}
#   9.1. Get the value of key `:b`.
#   9.2. Add to this hash the key:value pair `{e:5}`
#   9.3. Remove all key:value pairs whose value is less than 3.5

h = {a:1, b:2, c:3, d:4}
h[:b]
h[:e] = 5

  # one line version
  h.delete_if { |k, v| v < 3.5 }

  # multi-line version
  h.delete_if do |k, v|
    v < 3.5
  end

  #   10. Can hash values be arrays? Can you have an array of hashes? (give examples)
  #   Yes

  # hash values as arrays
  hash = {names: ['bob', 'joe', 'susan']}

  # array of hashes
  arr = [{name: 'bob'}, {name: 'joe'}, {name: 'susan'}]

#   12. Given the following data structures. Write a program that moves the information from
#  the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

#   13. Using the hash you created from the previous exercise, demonstrate how you would
#   access Joe's email and Sally's phone number?

p "Joe's email is: #{contacts["Joe Smith"][:email]}"
p "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

#   15. Use Ruby's Array method delete_if and String method start_with? to delete all
#   of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

#   Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".

arr.delete_if { |word| word.start_with?("s") }
p arr
arr.delete_if { |word| word.start_with?("s", "w") }
p arr

#   16. Take the following array:

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

#    and turn it into a new array that consists of strings containing one word.
#   (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map
#   and flatten methods, as well as String's split method.
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |pairs| pairs.split }
a = a.flatten
p a
