require "rest-client"
require "nokogiri"
require "open-uri"
data = RestClient.get("point.md/ru").body
html = Nokogiri::HTML(data)
headers = html.css('div#post-list-container h2').text.split("\n").reject{|i| i.empty?}
image_url = html.css('div#post-list-container img').map {|img| img["src"]}
data = Hash[headers[0..9].zip image_url[0..9]]
puts data

data.each do |head, img|
	open(head, 'wb') do |file|
  		file << open(img).read
	end
end