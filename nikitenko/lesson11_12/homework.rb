require 'pry'
require 'rest-client'
require 'nokogiri'

data=RestClient.get('https://point.md/ru')
html=Nokogiri::HTML(data)

inf_hash = {}

i = 0

while i < 10 do
	keys = html.css('figure[class = "post-list-container-item-img"] img')[i]['alt']
	values = html.css('figure[class = "post-list-container-item-img"] img')[i]['src']

	inf_hash[keys] = values

	img = RestClient.get(inf_hash[keys]).body

	File.write('./'+keys.to_s , img, mode: "wb")
    i+=1
end

p inf_hash