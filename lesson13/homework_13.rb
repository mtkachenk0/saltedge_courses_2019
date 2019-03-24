require 'nokogiri'
require 'watir'
require 'pry'

class Kinopoisk

	def initialize(movies)
		@movies = movies
		@browser = Watir::Browser.new
	end

	def program_run
		@browser.goto "www.kinopoisk.ru"
		@browser.input(class:"header-fresh-search-partial-component__field").click
		movies_data(@movies)
	end

	def movies_data(movies)
		mv_inf = []
		movies.each do |movie|
			@browser.text_field(class:"header-fresh-search-partial-component__field").set(movie)
			Watir::Wait.until { @browser.a(class:"header-fresh-search-suggest-partial-component__item_type_first").present? }
			@browser.a(class:"header-fresh-search-suggest-partial-component__item_type_first").click

			html = Nokogiri::HTML(@browser.html)
			mv_inf << movie_info(html)
		end
	end

	def movie_info(html)
		movie_shiz            = {}
		movie_shiz[:name]     = html.css('div#headerFilm h1.moviename-big').text
		movie_shiz[:year]     = html.css('table.info tbody:nth-child(1) tr:nth-child(1) td:nth-child(2) div:nth-child(1) a:nth-child(1)').text
		movie_shiz[:genre]    = html.css('table.info tbody:nth-child(1) tr:nth-child(11) td:nth-child(2) span:nth-child(1)').text
		movie_shiz[:country]  = html.css('table.info tbody:nth-child(1) tr:nth-child(2) td:nth-child(2) div:nth-child(1) a').map {|name| name.text}
		movie_shiz[:director] = html.css('table.info tbody:nth-child(1) tr:nth-child(4) td:nth-child(2) a:nth-child(1)').text
		movie_shiz[:actors]   = html.css('#actorList ul:nth-child(2)').css('li')[0..4].map {|person| person.text}
		movie_shiz
	end
end

