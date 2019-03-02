
arr= 1..100
arr2=[]
p arr
def check_num(num)
  if num%7==0 and num %5!=0
    return true
  else return false
  end
end

arr.each{|num| arr2 << num if check_num(num) == true}
p arr2

def fact(x)
  if x == 0
    return 1
  return x * fact(x - 1)
end
x=gets.chomp.to_i
