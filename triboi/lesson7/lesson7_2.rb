def test
  puts "before block"
  yield if block_given?
  puts "after block"
end
test

def test2
  puts "before block"
  yield  15 if block_given?
  puts "after block"
end

test2 {|i| puts i}


# Napishem svoi metod
def many_param(a, b = 1, *array, **kwargs, &block)
  puts a, b
  puts array
  puts kwargs
end

#class Array
#  def each(&block)
#    for i in self
#      yield i + 1
#    end
#  end
#end
#a = [1, 2, 3]
#a.our_each {|elem| puts elem }


def each_second(a, &block)
  a.each_with_index do |value, index|
      yield value if index.odd?
  end
end
each_second([1,2,3,4,5,6]) {|elem| puts elem}

puts "========== sortiruet hash"
def each_sorted_key(hash)
  hash.keys.sort.each { |elem| yield elem}
end
each_sorted_key({c: 1, a: 2, b: 3}) {|elem| puts elem}
