require 'pry'
require 'watir'
require 'nokogiri'

class Kinopoisk
    attr_accessor :movie

    def initialize(movie)
        @movie = movie
    end

    def movie_info
        browser = Watir::Browser.new
        browser.goto("kinopoisk.ru")
        browser.text_field(class: "header-fresh-search-partial-component__field").set(movie)
        browser.send_keys(:enter)
        browser.p(class: "name").a.click
        page = Nokogiri::HTML.parse(browser.html)
        info = page.css('div[data-metrika="film_card"]')
        title       = info.css('h1').text
        year        = info.css('div[style="position: relative"]').text.split[0]
        genre       = info.css('span[itemprop="genre"]').text
        country     = info.css('div[style="position: relative"]').text.split[1]
        director    = info.css('td[itemprop="director"]').text
        actors      = info.css('li[itemprop="actors"]').map {|x| x.text}[0...5]
        puts = {"#{title}" => {"Year" => year, "Genre" => genre, "Country" => country, "Director" => director, "5 main actors" => actors}}
    end

end

movie_1 = Kinopoisk.new("Жмурки")
movie_2 = Kinopoisk.new("Криминальное чтиво")
movie_3 = Kinopoisk.new("Большой куш")

movies = [movie_1.movie_info, movie_2.movie_info, movie_3.movie_info]
puts movies
