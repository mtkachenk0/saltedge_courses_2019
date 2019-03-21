require 'nokogiri'
require 'watir'
require 'pry'

class KinopoiskParser
  BASE_URL = "https://kinopoisk.ru/"
  attr_reader :browser
  def initialize
    @browser = Watir::Browser.new :chrome
  end

  def run!
    browser.goto("https://kinopoisk.ru")
    result = movies.first(3).map do |link|
      browser.goto link
      movie_info
      puts "parsed #{movie_info[:movie_name]}"
    end
  end

  private

  def movies
    browser.div(id: "block_right").dl(class: "block_soon").dds.map(&:link).map(&:href)
  end

  def movie_info
    {
      percent:      percent_html.at_css("span#await_percent").text,
      movie_name:   main_html.at_css("h1.moviename-big").text,
      premier_date: main_html.at_css("td#div_world_prem_td2 a").text
    }
  end

  def main_html
    Nokogiri::HTML.fragment(browser.div(id: "viewFilmInfoWrapper").html)
  end

  def percent_html
    Nokogiri::HTML.fragment(browser.div(class: "await_rate").html)
  end
end


parser = KinopoiskParser.new
parser.run!
