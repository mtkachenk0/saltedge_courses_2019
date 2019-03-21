require "rest-client"
require "nokogiri"
require "open-uri"
data = RestClient.get("https://point.md/ru").body
html = Nokogiri::HTML(data)
# make articles
articles = html.css('div#post-list-container h2').text.split("\n").reject{|i| i.empty?}
# make urls
images = html.css('div#post-list-container img').map {|img| img["src"]}
# puts news
news = Hash[articles[0..9].zip images[0..9]]
puts news

# save files

news.each do |key, value|
	open("#{key}.jpg", 'wb') do |file|
  		file << open(value).read
	end
end
