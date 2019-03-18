require "pry"
require "rest-client"
require "nokogiri"

data = RestClient.get('https://point.md/ru/').body
page_pointmd = Nokogiri::HTML(data)
point_hash = {}

page_pointmd.css('div.middle-block img')[0..9].each do |img|
	point_hash[img['alt']] = img['src']
end

point_hash.each do |k,v|
	File.open("#{k}.jpg", 'wb'){ |f| f.write(RestClient.get(v))}
end
binding.pry
1
