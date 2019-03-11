require 'pry'

list = JSON.parse(File.read("macarova/homework_lesson9/list.json"))

name_list = list.map{|h| h["name"]}
surname_list = list.map{|h| h["surname"]}

generator_list = name_list.product(surname_list)
generator_list.map! do |arr|
  arr.join(" ")
end

File.open("macarova/homework_lesson9/generator_list.json", "w") do |f|
  f.write(JSON.pretty_generate(generator_list))
end

binding.pry

1