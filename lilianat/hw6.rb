=begin 
Home work
1. Create an array of numbers
   1.1. Display the index of the maximum number
   1.2. Display all numbers which are divided by 2
or 3
   1.3. Display all numbers which are not multiple
of 6
   1.4. Find out if your array contains number 16
or 26.
=end

a = [2, 13, 54, 106, 18, 27]
a.index { |x| x == a.max } # 3
a.select { |m| (m % 2 == 0) || (m % 3 == 0) } # [2, 54, 106, 18, 27]

a.all? { |st| (st == 16) || (st == 26) } or a.none? { |st| (st == 16) || (st == 26) } # false/true


=begin
2. Create an array of hashes
   Each hash should contain the keys: title,
artist, year
example: [
     { title: 'Mad World', artist: 'Gary Jules',
year: 1998 },
     { title: 'California Gurls', artist: 'Katy
Perry', year: 2000 },
     { title: 'Needle in the Hay', artist: 'Elliott
Smith', year: 1997 },
     { title: 'Happy', artist: 'Pharrell Williams',
year: 2017 },
     { title: 'Some song', artist: 'Pharrell
Williams', year: 2018 }
]
   2.1. Display all titles
   2.2. Display all songs from 90'
   2.3. Display artists names which have more then
1 song
   2.4. Display the oldest song
=end

playlist = [{ title: 'Mad World', artist: 'Gary Jules', year: 1998 }, { title: 'California Gurls', artist: 'Katy Perry', year: 2000 }, { title: 'Needle in the Hay', artist: 'Elliott Smith', year: 1997 }, { title: 'Happy', artist: 'Pharrell Williams', year: 2017 }, { title: 'Some song', artist: 'Pharrell Williams', year: 2018 }]

playlist.each { |x| puts x[:title] }
# Mad World
# California Gurls
# Needle in the Hay
# Happy
# Some song  

playlist.select { |x| puts x[:title] if x[:year] < 2000 }
# Mad World
# Needle in the Hay

# 2.3 - make a new empty array to store the values of the artists that have more than one song 
# 2.4 - use sort_by





#3. Read about other enumerable method. Tell in 2 sentences about 1 of them which we didn't cover on this lesson.