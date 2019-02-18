# exercise 1
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# one line version
arr.each { |t| print t }

# exercise 2
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |number| puts number if  number > 5}

#  exercise 3
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
x = arr.select { |number| number if number.odd? }
print x 
print "\n"

# exercise 4"
print arr.prepend(0).append(11)
print "\n"

# exercise 5
arr.pop
print arr << 3
print "\n"

# exercise 6
arr.uniq!
print arr

# exercise 7

# exercise 8
hs1 = { :name => "mini" }
hs2 = { name: "mini" }
print "\n"

# exercise 9
h = { a:1, b:2, c:3, d:4 }
puts h[:b]
h[:e] = 5
puts h
h.delete_if {|k,v| v < 3.5 }
puts h

# exercise 10
# hash values as arrays
hash = {numbers: [1, 2, 3]}

# array of hashes
arr = [{number: 1}, {name: 1}, {name: 2}]


# exercise 12
contact_data = [
	["joe@email.com", "123 Main st.", "555-123-4567"],
    ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Joe Smith"][:street] = contact_data[0][1]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:phone] = contact_data[1][2]
contacts["Sally Johnson"][:street] = contact_data[1][1]
puts contacts

# exercise 13
puts "Joe Smith email: #{contacts["Joe Smith"][:email]}"
puts "Sally Johnson phone: #{contacts["Sally Johnson"][:phone]}"

# exercise 15
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if do |s|
	s.start_with? "s"
end
puts arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if do |s|
	s.start_with? "s", "w"
end

# exercise 16
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
print a.map { |item| item.split }.flatten
p a 

