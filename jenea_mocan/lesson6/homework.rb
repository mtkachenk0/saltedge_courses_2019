# 1. Create an array of numbers

array = (1..100).to_a

# 1.1. Display the index of the maximum number

puts array.index.max

# 1.2. Display all numbers which are divided by 2 or 3

puts array.select {|number| number % 2 == 0 || number % 3 == 0}.join(', ')

# 1.3. Display all numbers which are not multiple of 6

puts array.reject {|number| number % 6 == 0}.join(', ')

# 1.4. Find out if your array contains number 16 or 26.

array.include?(16) or array.include?(26)

# 2. Create an array of hashes
# Each hash should contain the keys: title, artist, year

music = [
{ title: 'Mad World', artist: 'Gary Jules', year: 1998 },
{ title: 'California Gurls', artist: 'Katy Perry', year: 2000 },
{ title: 'Needle in the Hay', artist: 'Elliott Smith', year: 1997 },
{ title: 'Happy', artist: 'Pharrell Williams', year: 2017 },
{ title: 'Some song', artist: 'Pharrell Williams', year: 2018 }
]

# 2.1. Display all titles

music.each {|var| puts var[:title]}

# 2.2. Display all songs from 90'

old_songs = music.select {|var| var[:year] >= 1990 && var[:year] < 2000}
old_songs.each {|i| puts i[:title]}

# 2.3. Display artists names which have more then 1 song

unique = music.select do |var|
  names = music.map {|v| v[:artist]}
  var[:artist] == names.select{|e| names.count(e) > 1 }.uniq.join
end
puts unique[0][:artist]

# 2.4. Display the oldest song

oldest = music.select {|var| var[:year] == music.map {|v| v[:year]}.min}
puts unique[0][:title]




