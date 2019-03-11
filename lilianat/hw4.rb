# https://launchschool.com/books/ruby/read/intro_exercises
# Do only the following numbers of exercices: 1, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 15, 16

# 1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
#    and print out each value.

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a.each { |x| print "#{x}" + " " } 

# 2. Same as above, but only print out values greater than 5.

a.each { |x| puts x if x > 5 }

# 3. Now, using the same array from #2, use the select method 
#    to extract all odd numbers into a new array.

b = a.select { |y| y.odd? }

# 4. Append "11" to the end of the original array. Prepend "0" to the beginning.

a.unshift(0) << 11
a.unshift(0).push(11)

# 5. Get rid of "11". And append a "3".

a.pop
a.delete(11)
a.push(3)
a << 3

# 6. Get rid of duplicates without specifically removing any one value.
a.uniq

# 8. Create a Hash using both Ruby syntax styles.

h = {:a => "first"}
h = {a: "first"}

# 9. Suppose you have a hash 
#    1. Get the value of key `:b`.
#    2. Add to this hash the key:value pair `{e:5}`
#    3. Remove all key:value pairs whose value is less than 3.5

h = {a:1, b:2, c:3, d:4}
h[:b]
h[:e]=5
h.delete_if { |x, y| y < 3.5 }

# 12. Given the following data structures. Write a program that moves the information 
#     from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts     = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# 13. Using the hash you created from the previous exercise, 
#     demonstrate how you would access Joe's email and Sally's phone number?

contacts["Joe Smith"][:email]
puts "Joe's email: #{contacts["Joe Smith"][:email]}"
contacts["Sally Johnson"][:phone]
puts "Sally's phone number: #{contacts["Sally Johnson"][:phone]}"

# 15. Use Ruby's Array method delete_if and String method start_with? 
#     to delete all of the words that begin with an "s" in the following array.
#     Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |a| a.start_with?("s")}
arr.delete_if { |a| a.start_with?("s") || a.start_with?("w")}
arr.delete_if { |a| a.start_with?("s", "w")}

# 16. Take the following array and turn it into a new array that consists 
#     of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. 
#     Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |s| s.split(" ")}.flatten
