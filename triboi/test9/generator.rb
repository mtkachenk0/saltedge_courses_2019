
require 'pry'
require 'json'

data = JSON.parse(File.read("names_list.json"))
p data
names=[]
surnames=[]
data.each{|k,v| names << k and surnames << v}
surnames.uniq!
data_output = names.product(surnames)
data_output.map! do |i|
  i.join(" ")
end
File.open("output_list.json", "w") do |f|
 f.write(JSON.generate(data_output))
end


binding.pry
