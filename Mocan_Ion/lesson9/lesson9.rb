require "pry"
require "nokogiri"
require 'open-uri'
require 'rest-client'

page = Nokogiri::HTML(open('https://point.md/ru/'))

news_titles = []
i = 0
page.css("div.middle-block a[itemprop='URL']").each do |news|
  news_titles[i] = news.content
  i += 1
end

images_links = []
i = 0
page.css("div.middle-block img[itemprop='image']").each do |img|
  images_links[i] = img.get_attribute('src')
  i += 1
end

titles_and_images = Hash.new(0)
i = 0
10.times do
  titles_and_images[news_titles[i]] = images_links[i]
  i += 1
end
puts titles_and_images

# downloading images
titles_and_images.each do |title, img_url|
  url = img_url
  name = title
  file = RestClient.get(url).body
  File.write(name, file, mode: "wb")
end
