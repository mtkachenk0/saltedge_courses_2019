# problem 1
# Use the each method of Array to iterate over
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

myArray = [1,2,3,4,5,6,7,8,9,10]

# one line version
myArray.each {|number| puts number}

# multi-line version
myArray.each do |number|
	puts number
end

# problem 2
# Now, using the same array from #2, 
# use the select method to extract all odd numbers into a new array.

# one line version
myArray.each {|number| puts number if number > 5}

# multi-line version
myArray.each do |number|
	if number > 5
		puts number
	end
end

# problem 3
# Now, using the same array from #2,
# use the select method to extract all odd numbers into a new array.

# one line version
newArray = myArray.select {|number| number %2 !=0 }

# multi-line version
newArray = myArray.select do |number|
	number % 2 !=0
end

# problem 4
# Append "11" to the end of the original array. Prepend "0" to the beginning.

# one line version
myArray.append("11").unshift("0")

# problem 5
# get rid of 11, and append a 3

# one line version
myArray.push("3").delete_at(11)

# multi-line version
myArray.pop
myArray.append("3")
myArray.each {|number| puts number}
# might also use push, << to append; 

# problem 6
# Get rid of duplicates without specifically removing any one value.

myArray.uniq!

# problem 7
# major diffenrece between an array and a hash?

# problem 8
# Create a Hash using both Ruby syntax styles.

# First syntax style
hash = {:name => "valeria"}
# New syntax stle
hash = {name: "valeria"}

# problem 9
# Suppose you have a hash h = {a:1, b:2, c:3, d:4}

h = {a:1, b:2, c:3, d:4}
h[:b]
h[:e] = 5
h.delete_if {|key, value| value < 3.5 }

# problem 10
# can hash values be array? example?can you have array of hashes?

my_hash = {fruits:["orange","banana","apple"]}
puts my_hash[:fruits]
arr = [{fruit:"orange"},{fruit:"straweberry"},{fruit:"pineaple"}]

# problem 12 & 13

contact_data = [["joe@gmail.com","123 Main st.","123-456"],
["sally@gmail.com", "404 Not Found Dr.", "456-321"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" =>{}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

puts contacts["Joe Smith"][:email]
puts "Sally's phone number is : #{contacts["Sally Johnson"][:phone]}"

# problem 15
# Use Ruby's Array method delete_if and String method start_with?
# to delete all of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |x| x.start_with?("s")}
arr.delete_if { |x| x.start_with?("s","w")}

# problem 16

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |x| x.split}
a = a.flatten
p a







