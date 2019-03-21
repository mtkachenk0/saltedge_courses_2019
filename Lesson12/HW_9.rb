require 'pry'
require 'rest-client'
require 'nokogiri'

data = RestClient.get('https://point.md/ru').body
html = Nokogiri::HTML(data)

image=html.css("div[class='middle-block'] img[src*='https://i.simpalsmedia.com/point.md/news/']")[0..9]


top_news={}

image.each{|v|  top_news[v['alt']]=v['src']}

puts top_news

#write images to folder 
top_news.each_pair do |k,v|
	 file=RestClient.get(v)
	 File.write(k+'.jpg',file)
end


binding.pry
1
