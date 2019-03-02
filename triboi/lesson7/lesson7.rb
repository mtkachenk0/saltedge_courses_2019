def hello_world()
  puts "hello world"
end
hello_world()

def sum(a, b)
    return a + b
end
puts sum(2, 3)

def sum(a, b)
  return unless a.is_a?(Numeric) && b.is_a?(Numeric)
end

sum([],3)
def sum(a, b = 10) # po umol4aniu b=10
a + b
end
puts sum(20) #b ne zadan , poetomu = 10
puts sum(20, 4)

def test(a,b)
end
def test(a, b, **kwargs)
  puts a
  puts b
  puts kwargs
end

test(1,2, :a => 3, b: 5)
