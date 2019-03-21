# first task
arr=[3, 6, 2, 65, 3, 66, 21, 43, 9, 0, 1, -13, -22, 232

#1.1 показать индекс максимального элемента
arr.index(arr.max)

#1.2 показать все числа, которые делятся на 2 или на 3
arr.select {|v| v%2==0||v%3==0}

#1.3 показать все числа, которые не кратны 6
arr.select{|v| v%6!=0}

#1.4 выясните, содержат ли ваш массив числа 16 и 26
arr.include?(16|26)

# second task

arr_h = [{ title: 'Mad World', artist: 'Gary Jules', year: 1998 },
{ title: 'California Gurls', artist: 'Katy Perry', year: 2000 },
{ title: 'Needle in the Hay', artist: 'Elliott Smith', year: 1997 },
{ title: 'Happy', artist: 'Pharrell Williams', year: 2017 },
{ title: 'Some song', artist: 'Pharrell Williams', year: 2018 } ]


#2.1 показать все titles
arr_h.each{|v| puts v[:title]}

#2.2 показать все songs from 90
arr_h.select{|v| v[:year]<2000}.each{|i| puts i[:title]}

#2.3 показать artists which have more then 1 son








#2.4 display the oldest song

god=2019
arr_h.each do |v|
 if god>v[:year]
 god=v[:year]
 hash_old=v
 end
end
puts hash_old






















