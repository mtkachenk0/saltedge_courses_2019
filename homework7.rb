#Problem 1

arr = (1..50).to_a
puts "1.1	" + arr.index(arr.max).to_s

puts "1.2	" + arr.select {|i| i % 2 == 0 || i % 3 == 0 }.to_s

puts "1.3	" + arr.reject {|i| i % 6 == 0}.to_s

puts "1.4	" + arr.include?(16||26).to_s

arr_hash = [ {title: "Lucis", artist: "Alternosfera", year:2019},
			 {title: "BYOB", artist: "SOAD", year:1989},
			 {title: "Transitor", artist: "Korn", year:2002},
			 {title: "Flori de mai", artist: "Alternosfera", year:2004},
		   ]

puts "2.1	" + arr_hash.map {|hash| hash.select {|k,v| k == :title}}.to_s

puts "2.2	" + arr_hash.map {|hash| hash.select {|k,v| k == :year && v > 1990}}.to_s

#puts "2.3	" + arr_hash.map {|hash| hash.select {|k,v| k == :title}}.to_s