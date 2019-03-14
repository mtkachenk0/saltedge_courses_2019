# 1. Create an array of numbers

a = (1..25).to_a

# 1.1. Display the index of the maximum number

a.index(a.max)

# 1.2. Display all numbers which are divided by 2 or 3

a.each do |number|
	if number % 2 == 0
		puts number
	elsif number % 3 == 0
		puts number
	end
end

# 1.3. Display all numbers which are not multiple of 6

a.each do |number|
	if number % 6 != 0
		puts number
	end
end

# 1.4. Find out if your array contains number 16 or 26.

a.include?(16)
a.include?(26)

# arr.select{|a| [16, 26].include?a}.any?

# 2. Create an array of hashes

new_array = [
{ title: 'Doomed', artist: 'Bring Me The Horizon',
year: 2015 },
{ title: 'Lovely', artist: 'Twenty One Pilots', year: 2011 },
{ title: 'Our legacy', artist: 'while she sleeps', year: 2015 },
{ title: 'Bohemian Rhapsody', artist: 'Queen',
year: 1975 },
{ title: 'Riot', artist: 'Hollywood Undead', year: 2017 }
]

# 2.1 Display all titles

new_array.each do |song|
	puts song[:title]
end

# 2.2 Display all songs from 90'

new_array.each do |number|
	if number[:year] < 2000
		puts number
	end
end

# 2.3 Display artists names which have more then 1 song

# group_by {|h| hash(:artist)}
b = {}

new_array.each do |hash|
	if b.keys.include? hash[:artist]
		b[hash[:artist]] += 1
	else 
		b[hash[:artist]] = 1
	end
end

puts b(если  =  2)

# 2. 4 Display the oldest song
# use sory by
b = []
new_array.each do |x|
	b.push(x[:year])
end

max_number = b.max

puts new_array.find {|x| x[:year] == "#{max_number}".to_i}

# Read about other enumerable method.

#Tell in 2 sentences about 1 of them which we
#didn't cover on this lesson.

Grep - Returns an array of every element in enum for which Pattern === element.

(1..100).grep 38..44   #=> [38, 39, 40, 41, 42, 43, 44]