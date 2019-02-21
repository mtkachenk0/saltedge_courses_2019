irb(main):009:0> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#each method, one line version
irb(main):006:0> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
irb(main):007:0> arr.each{ |number| puts number}
1
2
3
4
5
6
7
8
9
10
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#multi line version
irb(main):013:0> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
irb(main):014:0> arr.each do |number|
irb(main):015:1*  puts number 
irb(main):016:1> end
1
2
3
4
5
6
7
8
9
10
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#print out values greater than 5
#one line version
irb(main):007:0> arr.each{ |number| puts number if number > 5 }
6
7
8
9
10
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#multiline version
irb(main):008:0> arr.each do |number|
irb(main):009:1*  if number > 5
irb(main):010:2>  puts number
irb(main):011:2>  end
irb(main):012:1> end
6
7
8
9
10
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#select method
#oneline version
irb(main):013:0> new_array = arr.select { |number| number % 2 != 0 }
=> [1, 3, 5, 7, 9]
#multiline version
irb(main):020:0> new_array = arr.select do |number|
irb(main):021:1*   number % 2 != 0
irb(main):022:1> end
=> [1, 3, 5, 7, 9]
#Append
irb(main):023:0> arr.push(11)
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
irb(main):024:0> arr << 11
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 11]
#Prepend
irb(main):026:0> arr.unshift(0)
=> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 11]
# Remove from end of array
irb(main):027:0> arr.pop
=> 11
# Append
irb(main):028:0> arr << 3
=> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 3]
irb(main):029:0> arr.push(3)
=> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 3, 3]
irb(main):031:0> arr.uniq
=> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
