#Home work
puts "Create an array of numbers"
numbers=[3,7,24,19,41,6,8,16,63,5]
puts numbers

puts "1.1. Display the index of the maximum number puts"
puts "Max index = " + (numbers.index(numbers.max)).to_s

puts "1.2. Display all numbers which are divided by 2 or 3 - V1"
numbers.each do |num|
  if num%2==0||num%3==0
     puts num
  end
end
puts "V2"
numbers.each {|num| puts num if num%2 == 0 || num%3 == 0}

puts "1.3. Display all numbers which are not multiple of 6 -  V1"
numbers.each do |num|
  if num%6!=0
       puts num
  end
end
puts "V2"
numbers.each {|num| puts num if num%6!=0}

puts "1.4. Find out if your array contains number 16 or 26.-V1"
flag = false
puts "array contains number 16 or 26"
numbers.each do |num|
  if num==16||num==26
    flag = true
    break
  end
end
puts flag

puts "V2"
puts numbers.select {|num| [16,26].include?num}.any?
