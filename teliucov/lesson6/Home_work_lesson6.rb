# Home_work_lesson6
# Task 1
# 1. Create an array of numbers
arr = (1..30).to_a
# 1.1 Display the index of the maximum number
puts arr.index(arr.max)
# 1.2 Display all numbers wich are divided by 2 or 3
arr.each do |val|
	puts val if ( val % 2 == 0 || val % 3 == 0)
	end
puts "=" * 20
# 1.3 Display all numbers which are not multiple of 6
arr.each do |val|
	puts val if val % 6 != 0
end
# 1.4 Find out if your array contains number 16 or 26
puts arr.include?(16) || arr.include?(26)

# Task 2
# Create an array of hashes
# Each hash should contains the keys: title, artist, year
# example
# {title: "Mad World", artist: "Gary Jules", year: 1998},
# {title: "California Gurls", artist: "Katy Perry", year: 2000},
# {title: "Needle in the Hay", artist: "Elliot Smith", year: 1997},
# {title: "Happy", artist: "Pharrell Williams", year: 2017},
# {title: "Some song", artist: "Pharrell Williams", year: 2018},

 music_hash = [{title: "Mad World", artist: "Gary Jules", year: 1998},
 {title: "California Gurls", artist: "Katy Perry", year: 2000},
 {title: "Needle in the Hay", artist: "Elliot Smith", year: 1997},
 {title: "Happy", artist: "Pharrell Williams", year: 2017},
 {title: "Some song", artist: "Pharrell Williams", year: 2018}]
# 2.1 Display all tittles
music_hash.map do |v|
	v[:title]
end
# 2.2 Display all songs from 90'
music_hash.map do |v|
 	v if v[:year] < 2000
end
# 2.3 Display artist names wich have more than 1 song
hash = Hash.new(0)
music_hash.each do |v|
	 hash[v[:artist]] += 1
end
puts hash.max_by{|_k, v| v}
# 2.4 Display the oldest song
rea = music_hash.sort_by do |k, _vv|
	k[:year]
end.first
puts rea[:title]

# Task 3 
# Read about other enumerable method
# Tell in 2 sentences about 1 of them wich we didn't cover on this lesson