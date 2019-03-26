require 'pry'
require 'rest-client'
require 'nokogiri'

data = RestClient.get('https://point.md/ru/').body
page = Nokogiri::HTML(data)
info = page.css('div#post-list-container img')[0...10]
name = info.map {|x| x["alt"]}
url = info.map {|x| x["src"]}
hash = Hash[name.zip url]

hash.each do |k, v|
 data = RestClient.get(v).body
 File.write("#{k}.jpg", data, mode: "wb")
end

puts hash
