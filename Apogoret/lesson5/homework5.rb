irb(main):065:0> num = 3
=> 3
irb(main):066:0> case num
irb(main):067:1> when 1 .. 20
irb(main):068:1>  puts "pervii"
irb(main):069:1> when 21 .. 48
irb(main):070:1>  puts "vtoroi"
irb(main):071:1> when 49 .. 90
irb(main):072:1>  puts "tretii"
irb(main):073:1> else 
irb(main):074:1*  puts "nesushestvuet"
irb(main):075:1> end
pervii
=> nil

#task2
irb(main):088:0> summ = 4
=> 4
irb(main):089:0> case summ
irb(main):090:1> when 0 .. 2
irb(main):091:1>  puts "0%"
irb(main):092:1> when 3 .. 10
irb(main):093:1>  puts "10%"
irb(main):094:1> when 10 .. 20
irb(main):095:1>  puts "20%"
irb(main):096:1> when 20 .. 70 
irb(main):097:1>  puts "25%"
irb(main):098:1> else
irb(main):099:1*  puts "something"
irb(main):100:1> end
10%
=> nil
