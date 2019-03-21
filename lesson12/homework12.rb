require "rest-client"
require "nokogiri"

data = RestClient.get("https://point.md/ru").body
html = Nokogiri::HTML(data)

articles = html.css('div#post-list-container h2').text.split("\n").reject{|i| i.empty?}

images = html.css('div#post-list-container img').map {|img| img["src"]}

news = Hash[articles[0..9].zip images[0..9]]
puts news

news.each_pair do |k,v|
	file=RestClient.get(v)
	File.write("#{k}.jpg",file)
end
