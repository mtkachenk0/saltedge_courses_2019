# napisati metod kotorii budet umnojati na 2 peredanoe 4islo esli 4islo 4eotnoe

def mulitipl2(a)
  if a.even?
   return a*2
  end
end
  puts mulitipl2(4)

#oshibki   , esli puts v metode
def sum(a, b)
  result = a+ b
  puts result
  result  # esli ne ukazati es4o raz to sleduius4ii puts dast nill
end
sum(2,4)

def test
  i,j,k = 1,2,3
end
test

def name(n="Max")
  puts "hello "+n
end
name("Oleg")
#
#def Bonus(staj)
  #if staj<0 return "вы ввели отрицательно число"
  #elsif staj<2 return "Надбавка 0%"
  #elsif staj<10 return "Надбавка 10%"
  #  elsif staj<20 return "Надбавка 20%"
  #else return "Надбавка 25%"
  #end
#end

#puts Bonus(10)
