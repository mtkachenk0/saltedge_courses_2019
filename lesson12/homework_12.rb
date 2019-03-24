require 'nokogiri'
require 'restclient'
require 'open-uri'
require 'pry'

 data    = RestClient.get('https://point.md/ru/').body
 webpage = Nokogiri::HTML(data)

 news    = webpage.css('h2')[0..9]
 sources = webpage.css('div.middle-block a img')[0..9]

 final_news    = news.map { |value| value.text}
 final_sources = sources.map {|value| value.attr('src')}
 sources_name  = sources.map {|value| value.attr('alt')}

 info_hash  = Hash[final_news.zip final_sources]

 final_sources.each_with_index do |value,index|
 	sources_name.each_with_index do |name,ind|
 		open(final_sources[index]) do |u|
 			 File.open(sources_name[index],'wb'){|f| f.write(u.read)}
 		end
 	end
 end


 


