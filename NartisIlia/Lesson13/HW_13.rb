require 'pry'
require 'rest-client'
require 'nokogiri'
require 'watir'


#Watir::Browser.new :chrome
class Kinopoisk

	def initialize(name_film)
		@name_film = name_film
	 	@browser = Watir::Browser.new :chrome
	 	@browser.goto("kinopoisk.ru")
	end
 	
 	def parse_HTML
	 	@browser.text_field(name: "kp_query").send_keys @name_film, :enter
	 	@browser.div(class: "info").a.click
	 	page = Nokogiri::HTML.parse(@browser.html)
 	end

 	def info
        require 'watir'
	 	@browser.text_field(name: "kp_query").send_keys @name_film, :enter
		@browser.div(class: "info").a.click
		
		[{@browser.h1(class: "moviename-big").text=> {"year"=> @browser.tbody[0].a.text, 
		"genre"=>@browser.span(itemprop: "genre").text, "country"=>@browser.tbody[1].a.text,
		"director"=>@browser.tbody[3].a.text, 
		"5 main actors"=>@browser.div(id: "actorList").ul[0..4].map!{|v| v.text}}}]
	end

end




film_1=Kinopoisk.new("Зеленая миля")
film_2=Kinopoisk.new("Форрест Гамп")
film_3=Kinopoisk.new("Побег из Шоушенка")





binding.pry
1




