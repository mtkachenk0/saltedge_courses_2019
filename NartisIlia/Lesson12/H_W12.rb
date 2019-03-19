require 'pry'
require 'rest-client'
require 'nokogiri'

data = RestClient.get('https://point.md/ru').body
html = Nokogiri::HTML(data)

big_image=html.css("div[class='middle-block'] img[src*='https://i.simpalsmedia.com/point.md/news/370x220']")
little_image=html.css("div[class='middle-block'] img[src*='https://i.simpalsmedia.com/point.md/news/160x90']")

#Get first 10 images
top_news={big_image[0]['alt']=>big_image[0]['src']}
i=0
little_image.each{|v|  top_news[v['alt']]=v['src'] if (i=i+1)<10}

puts top_news

#write images to folder 
top_news.each_pair do |k,v|
 file=RestClient.get(v)
 File.write('/home/william/courses/saltedge_courses_2019/NartisIlia/Lesson12/'+k+'.jpg',file)
end


binding.pry
1
