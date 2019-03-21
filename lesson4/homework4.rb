#   1. Use the each method of Array to
#   iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
#   and print out each value.
arrayn=(1..10).to_a

#   one line
arrayn.each{|number| puts number}
#   multi-line
arrayn.each do |number|
  puts number
end

#   3. Now, using the same array from #1, use the select method to extract all odd numbers into a new array.
#   one line
new_arrayn=arrayn.select{|number| number.odd?}
puts new_arrayn

#   multi-line
new_arrayn = arrayn.select do |number|
  number.odd?
end

#    4. Append "11" to the end of the original array. Prepend "0" to the beginning.
arrayn << 11
arrayn.unshift(0)
puts arrayn
puts
#    5. Get rid of "11". And append a "3".
arrayn.pop
arrayn<< 3
puts arrayn

#   6. Get rid of duplicates without specifically removing any one value.
 #Temporary array
arrayn.uniq
 # New array
arrayn.uniq!

#   7. What's the major difference between an Array and a Hash?
puts "The major difference between an array and a hash is \nthat a hash contains a key value pair for referencing by key."

#   8. Create a Hash using both Ruby syntax styles.
hash = {:name => 'ivan'} # <= old version
hash = {name: 'ivan'} # <= new version

#   9. Suppose you have a hash hash = {a:1, b:2, c:3, d:4}
#   9.1. Get the value of key `:b`.
#   9.2. Add to this hash the key:value pair `{e:5}`
#   9.3. Remove all key:value pairs whose value is less than 3.5

hash = {a:1, b:2, c:3, d:4}
hash[:b]
hash[:e] = 5

  # one line 
  hash.delete_if { |k, v| v < 3.5 }

  # multi-line 
  hash.delete_if do |k, v|
    v < 3.5
  end

  #   10. Can hash values be arrays? Can you have an array of hashes? (give examples)
  #   Yes

  # hash values as arrays
  hash = {names: ['ivan', 'petea', 'sonea']}

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

puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

#   15. Use Ruby's Array method delete_if and String method start_with? to delete all
#   of the words that begin with an "s" in the following array.

arrayw = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

#   Then recreate the array and get rid of all of the words that start with "s" or starts with "w".

arrayw.delete_if { |word| word.start_with?("s") }
puts arrayn
arrayw.delete_if { |word| word.start_with?("s", "w") }
puts arrayw

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
puts a
