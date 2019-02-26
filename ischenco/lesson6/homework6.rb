a=(17..255).to_a
puts "Our array"
print a
puts " "
puts "Max element of array is:"+(a.max).to_s
puts " "
puts "Index of max element of array is:" + (a.rindex { |x| x == a.max }).to_s
puts " "
puts "All numbers of array which are devided by 2 or 3"   
 a.each do|i|
        if i % 2 == 0 || i % 3 == 0
        print i
        print " "
        end
    end
puts " "
puts "All numbers which are not multiple by 6" 
 a.each do|i|
        if i % 6 != 0
        print i
        print " "
        end
    end
puts " "
puts "All numbers of array which are devided by 2 or 3 - v2"   
 a.select do|i|
        i % 2 == 0 || i % 3 == 0
        print i
        print " "
        
    end
puts " "
puts "All numbers which are not multiple by 6 - v2" 
 a.select do|i|
        i % 6 != 0
        print i
        print " "
   
 end
puts " "
puts "If our array contains 16 or 26 "
if a.detect  {|i| i == 16 || i == 26 }  
puts "Yes"
else puts"No"
end


mus=[{ title: 'Mad World', artist: 'Gary Jules',year: 1998 },{ title: 'California Gurls', artist: 'Katy Perry', year: 2000 },{ title: 'Needle in the Hay', artist: 'Elliott Smith', year: 1997 }, { title: 'Happy', artist: 'Pharrell Williams', year: 2017 },{ title: 'Some song', artist: 'Pharrell Williams', year: 2018 }]


puts mus
puts" Titles of songs"
mus.each do |s|
 puts s[:title]
end

puts "Songs from 90"

mus.each do |y|
t= y[:year].to_i
if t>1989 && t<2000
puts t
end
end

puts "Artists that have more then one song"

b=Array.new
mus.each do |a|
b.push(a[:artist])
end
puts b[0]








