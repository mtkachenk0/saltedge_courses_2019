require 'pry'
require 'rest-client'
require 'nokogiri'
require 'json'

data=RestClient.get("https://point.md/ru/")
page=Nokogiri::HTML(data)

tit = []
img = []
news = {}
$i=0
while $i < 10  do
#   title_articles = page.css('article h2')[$i].text.delete("\n")
#   img_links = page.css('article img')[$i]["src"]
   tit << page.css('article h2')[$i].text.delete("\n")
   img << page.css('article img')[$i]["src"]
   #hash = {title: tit, image: img}

   news = tit.zip(img).to_h

   $i +=1
end

File.open("output.json", "w") do |f|
 f.write(JSON.pretty_generate(news))
end

news.each do |k,v|
  File.open("#{k}.jpg",'wb') do |f|
    f.write(RestClient.get(v))
  end
end
#news.each do ||
binding.pry
