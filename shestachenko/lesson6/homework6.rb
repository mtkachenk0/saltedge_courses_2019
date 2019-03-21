# 1. Create an array of numbers
 array = [8, 7, 18, 11, 19, 17, 15, 6, 16, 14, 13, 10, 5, 12, 9, 20]


# 1.1 Display the index of the maximum number

puts "The index of the maximum number is: #{array.index {|x| x == array.max}}"

# 1.2 Display all numbers which are divided by 2 or 3

puts "The numbers which are divided by 2 or 3 is: #{array.select do |h|
  h % 2 == 0 || h % 3 == 0
end}"
# 1.3 Display all numbers which are not multiply of 6

puts "All numbers which are not multiply of 6 is: #{array.select do |h|
  h % 6 != 0
end}"

# 1.4 Find out if your array contains number 16 or 26

puts array.include?(16 || 26)

#puts array.select { |a| [16, 26].include? a}.any?


arr = [{title: 'Mad World', artist: 'Gary Jules', year: 1998 },
	{title: 'California Girls', artist: 'Katy Perry', year: 2000 },
	 {title: 'Needle in the Hay', artist: 'Elliott Smith', year: 1997 },
	 {title: 'Happy', artist: 'Pharrell Williams', year: 2017 },
	 {title: 'Some song', artist: 'Pharrell Williams', year: 2018 }]

#2.1 Display all titles
arr.select do |g|
  puts g[:title]
end

arr.each { |hash| puts hash[:title]}

#2.2 Display all songs from 90'

arr.each do |g|
  if g[:year] < 2000
  puts g[:title]
end
end


#arr.each { |hash| puts hash[]:title if hash[:year] < 2000}

#2.3 Display artists names which have more then 1 song

#arr.group_by
b = {}
arr.each do |hash|
  if b.keys.include? hash[:artist]
b[hash[:artist]]+=1
else
  b[hash[:artist]]=1
end
end

#2.4 Display the oldest song
god = 2019
arr.each do |v|
 if god > v[:year]
 god = v[:year]
 hash_old = v
 puts hash_old
 end
end
