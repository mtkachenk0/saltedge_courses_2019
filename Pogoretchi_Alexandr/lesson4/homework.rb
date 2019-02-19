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


