require 'watir'
require 'nokogiri'
require 'rest-client'
require 'open-uri'

class Kinopoisk
  def initialize(movie)
    @movie = movie
  end

  def browse_page
    @browser = Watir::Browser.new
    @browser.goto 'https://kinopoisk.ru'
    @browser.text_field(name: 'kp_query').set(@movie)
    @browser.send_keys:enter
    @browser.div(class: "search_results").p(class: "pic").link('data-type': "film").click
  end

  def parse_page
    @page = Nokogiri::HTML.parse(@browser.html)
    @movie_title = @page.at_css("h1[class = 'moviename-big']").content
    @movie_year = @page.at_css("td a").content
    @movie_genre = @page.at_css("span[itemprop='genre'] a").content
    @movie_director = @page.at_css("tr td[itemprop='director'] a").content
    @movie_actors = []
    i = 0
    @page.css("ul li[itemprop='actors'] a").each { |actor|
      @movie_actors[i] = actor.content
      i += 1
    }
    @main_actors = @movie_actors[0...5]
  end

  def show_info
    browse_page
    parse_page
    @movie_hash = {
      @movie_title => {
        year: @movie_year,
        genre: @movie_genre,
        director: @movie_director,
        actors: @main_actors
      }
    }
    puts @movie_hash
  end
end

kino1 = Kinopoisk.new("Pulp Fiction")
kino1.show_info

kino2 = Kinopoisk.new("The prestige")
kino2.show_info

kino3 = Kinopoisk.new("The Exam")
kino3.show_info
#kino2 = Kinopoisk.new("The prestige")
#kino2.show_info
#kino3 = Kinopoisk.new("Exam")
#kino3.show_info
  #{}"The jacket", "Eternal sunshine of spotless minds")
