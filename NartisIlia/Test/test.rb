require 'pry'
require 'json'
#require 'rubygems'

$stdout = File.open('output_file','w')

json = open("Names.json").read


par = JSON.parse(json)
puts par
arr=par.to_a


i=1 # i-counter iterations
while arr.size > i
    
    i+=1  
    arr.each_with_index do |val,index| 
        if arr.size > index+1
        str = val[1]
        arr[index][1]=arr[index+1][1]
        arr[index+1][1] = str
        else 
        break
        end
    end

puts arr.to_h
end



#binding.pry
#1
