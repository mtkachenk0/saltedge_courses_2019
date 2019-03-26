require 'pry'
require 'watir'
require 'nokogiri'

class Kinopoisk
  	BASE_URL = "kinopoisk.ru"

 	def browser
   		@browser ||= Watir::Browser.new :chrome
 	end

 	def films
 		films = "Интерстеллар", "Пираты Карибского Моря", "Мстители"
 	end

	def run
		array = films.map do |film|
			browser.goto("https://kinopoisk.ru")
			browser.text_field(class: "header-fresh-search-partial-component__field").set(film)
			browser.button(class: "header-fresh-search-partial-component__button").click
			browser.p(class: "name").a.click
			[list(parser)]
		end
		puts array
	end

	def parser
		Nokogiri::HTML.parse(browser.html)
	end

	def list(page)
		title		= page.css('h1').text
		year		= page.css('div[style="position: relative"]').text.split[0]
		genre		= page.css('span[itemprop="genre"]').text.split(',')[0]
		country		= page.css('div[style="position: relative"]').text.split[1].delete(',')
		director	= page.css('td[itemprop="director"]').text
		actors 		= page.css('li[itemprop="actors"]').map {|i| i.text}[0..4]
		{
			"#{title}" => {"year": year, 
			"genre" => genre, 
			"country" => country,
			"director" => director, 
			"5 main actors" => actors}
		}
	end
end

movies = Kinopoisk.new
movies.run

binding.pry

