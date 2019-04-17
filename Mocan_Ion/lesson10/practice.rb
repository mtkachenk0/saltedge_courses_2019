require 'watir'
require 'nokogiri'
require 'rest-client'
require 'open-uri'
=begin
browser = Watir::Browser.new
browser.goto 'https://kinopoisk.ru'
browser.text_field(name: 'kp_query').set('Pulp Fiction') #fix this!!!
browser.send_keys:enter
browser.div(class: "search_results").p(class: "pic").link('data-type': "film").click

=end

browser = Watir::Browser.new
browser.goto 'https://www.kinopoisk.ru/film/340/'
data = browser
page = Nokogiri::HTML(open(data))


movie_title = page.at_css("h1[class = 'moviename-big']").content
movie_year = page.at_css("td a").content
movie_genre = page.at_css("span[itemprop='genre'] a").content
movie_director = page.at_css("tr td[itemprop='director'] a").content

movie_actors = []
i = 0
page.css("ul li[itemprop='actors'] a").each { |actor|
  movie_actors[i] = actor.content
  i += 1
}
main_actors = movie_actors[0...5]

movie_hash = {
  movie_title => {
    year: movie_year,
    genre: movie_genre,
    director: movie_director,
    actors: main_actors
  }
}

puts movie_hash

=begin
[
   {
      "Меч короля Артура":{
         "year": "2017",
         "genre": "фэнтези",
         "country": "США",
         "director": "Гай Ричи",
         "5 main actors": [
            "Чарли Ханнэм",
            "Астрид Берже-Фрисби",
            "Джуд Лоу",
            "Джимон Хонсу",
            "Эрик Бана"
         ]
      }
   }
]


=end
