arr = (1..20).to_a
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
irb(main):009:0> arr.max
=> 20
arr.find_all{ |elem| elem % 3 == 0 || elem % 2 == 0 }
=> [2, 3, 4, 6, 8, 9, 10, 12, 14, 15, 16, 18, 20]
arr.find_all{ |elem| elem % 6 != 0 }
=> [1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 13, 14, 15, 16, 17, 19, 20]
irb(main):055:0> arr.include?(16)
=> true
irb(main):056:0> arr.include?(26)
=> false
irb(main):057:0> 

#task 2
irb(main):001:0> my_hash = [
irb(main):002:1* { title: 'Mad World', artist: 'Gary Jules',
irb(main):003:2* year: 1998 },
irb(main):004:1* { title: 'California Gurls', artist: 'Katy
irb(main):005:2' Perry', year: 2000 },
irb(main):006:1* { title: 'Needle in the Hay', artist: 'Elliott
irb(main):007:2' Smith', year: 1997 },
irb(main):008:1* { title: 'Happy', artist: 'Pharrell Williams',
irb(main):009:2* year: 2017 },
irb(main):010:1* { title: 'Some song', artist: 'Pharrell
irb(main):011:2' Williams', year: 2018 }
irb(main):012:1> ]
=> [{:title=>"Mad World", :artist=>"Gary Jules", :year=>1998}, {:title=>"California Gurls", :artist=>"Katy\nPerry", :year=>2000}, {:title=>"Needle in the Hay", :artist=>"Elliott\nSmith", :year=>1997}, {:title=>"Happy", :artist=>"Pharrell Williams", :year=>2017}, {:title=>"Some song", :artist=>"Pharrell\nWilliams", :year=>2018}]
irb(main):013:0> puts my_hash.map { |x| x.values[0] }
Mad World
California Gurls
Needle in the Hay
Happy
Some song
=> nil
irb(main):014:0> my_hash.select do |var|
irb(main):015:1*  var[:year] >= 1990 && var[:year] < 2000
irb(main):016:1> end
=> [{:title=>"Mad World", :artist=>"Gary Jules", :year=>1998}, {:title=>"Needle in the Hay", :artist=>"Elliott\nSmith", :year=>1997}