require "rest-client"
require "nokogiri"


data = RestClient.get("point.md/ru").body
page = Nokogiri::HTML(data)
postnames = page.css('div.post-blocks-wrap h2')[0..9].text
postnames=postnames.split("\n")
postnames=postnames.reject{|n| n.empty?}
puts postnames
imgurls = page.css('div.middle-block img')[0..9]
imgurls=imgurls.map{|unames| unames.attr('src')}
puts imgurls
datahash = Hash[postnames.zip imgurls]
puts datahash
datahash.each do |k,v|
File.open("#{k}.jpg", 'wb') do |f| 
	f.write(RestClient.get(v))
end
end 