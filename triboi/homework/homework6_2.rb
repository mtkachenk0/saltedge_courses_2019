#2. Create an array of hashes


#Each hash should contain the keys: title, artist, year
#example:
#[
#{ title: 'Mad World', artist: 'Gary Jules',year: 1998 },
#{ title: 'California Gurls', artist: 'Katy Perry', year: 2000 },
#{ title: 'Needle in the Hay', artist: 'Elliott Smith', year: 1997 },
#{ title: 'Happy', artist: 'Pharrell Williams', year: 2017 },
#{ title: 'Some song', artist: 'Pharrell Williams', year: 2018 }
#]
MyArray = [{ title: 'Mad World', artist: 'Gary Jules',year: 1998 },
{ title: 'California Gurls', artist: 'Katy Perry', year: 2000 },
{ title: 'Needle in the Hay', artist: 'Elliott Smith', year: 1997 },
{ title: 'Happy', artist: 'Pharrell Williams', year: 2017 },
{ title: 'Some song', artist: 'Pharrell Williams', year: 2018 } ]
puts MyArray
#2.1 Display all titles
MyArray.each do |element|
  puts element[:title]
end
p "one line"
MyArray.each { |element| puts element[:title]}
#2.2 Display all songs from 90'"
MyArray.each{ |song| puts song if song[:year] >= 1990 && song[:year] < 2000 }
#2.3 Display artists names which have more then 1 song
p "========="


#MyArray.each do |element|
#  MyArray.count[2] { } #=> 3
#end
#filtering = grouped.values.select {|count| count.size > 1}.flatten

#MyArray.each do |element|
#    if element[:artist] == element1[:artist]
#      count[element[:artist]]+=1
#      p
#    else
#      count[element[:artist]]=1
#    end
#  end
#end

#2.4 Display the oldest song


#3. Read about other enumerable method.
#Tell in 2 sentences about 1 of them which we
#didn't cover on this lesson.
