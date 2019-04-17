#1
array = [1,2,3,4,5,6,7]
#1.1
puts array.max
#1.2
puts "Divisible by 2:"
array.select { |i| puts i if i % 2 == 0 }
#1.3
puts "Not multiples of 6: "
array.select { |i| puts i if i % 6 != 0}
#1.4
puts array.include?(16) || array.include?(26)
#2
songs = [
  { title: 'Mad World', artist: 'Gary Jules', year: 1998 },
  { title: 'California Girls', artist: 'Katy Perry', year: 2000 },
  { title: 'Sugar babes', artist: 'Katy Perry', year: 2030 },
  { title: 'Needle in the Hay', artist: 'Elliot Smith', year: 1997 },
  { title: 'Happy', artist: 'Pharell Williams', year: 2017 },
  { title: 'Screaming in the dark', artist: 'Pharell Williams', year: 2018 }
]
#2.1
puts "All titles:"
songs.each do |i|
  puts i[:title]
end
#2.2
puts "Songs from 90's: "
songs.each do |i|
  puts i[:title] if i[:year] <= 2000 && i[:year] > 1990
end
#2.3
artists = []
n = 0
songs.each do |i|
  artists[n] = i[:artist]
  n += 1
end
uniques = artists.group_by {|e| e}.map { |e| e[0] if e[1][1]}.compact
puts "Artists with more than one song:"
puts uniques.inspect
#2.4
song_years = []
n = 0
songs.each do |i|
  song_years[n] = i[:year]
  n += 1
end
puts "The oldest song is: "
puts songs[song_years.index(song_years.max)][:title]
