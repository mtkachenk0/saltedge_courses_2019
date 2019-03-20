arr=(1..20).to_a
puts "Problem 1.1 : " + arr.index(arr.max).to_s

puts "Problem 1.2 : " + arr.select { |num| num%2==0 || num%3==0}.to_s

puts "Problem 1.3 : " + arr.reject { |num| num%6==0}.to_s

puts "Problem 1.4 : " + arr.include?(16||26).to_s

arr_hash=[{title: 'Mad World',artist: 'Gary Jules', year: 1998},{title: 'Happy',artist: 'Pharell Williams', year: 2017},{title: 'Bad Liars',artist: 'Imagine Dragons', year: 2018},{title: 'Radioactive',artist: 'Imagine Dragons', year: 2013}]

puts "Array of Hashes : " + arr_hash.to_s

puts "Problem 2.1 : " + arr_hash.map {|hash| hash[:title]}.to_s

puts "Problem 2.2 : " + arr_hash.map {|hash| puts hash if hash[:year]>1990 && hash[:year]<2000}.to_s

#puts "Problem 2.3 : "
b=[]
arr_hash.each do |hash|
  if b.keys.include?hash[:artist]
   b[hash[:artist]]+=1
  else
   b[hash[:artist]]=1
  end
end
