require 'watir'
require 'nokogiri'
require 'pry'

class Kinopoisk

film1 = "Интерстеллар"
film2 = "Побег из Шоушенка"
film3 = "Телепорт"

browser = Watir::Browser.new
browser.goto("kinopoisk.ru")

browser.text_field(class: "header-fresh-search-partial-component__field").set(film1)
browser.send_keys(:enter)
browser.link(href: "/level/1/film/258687/sr/1/").click
page1 = Nokogiri::HTML.parse(browser.html)

browser.text_field(class: "header-fresh-search-partial-component__field").set(film2)
browser.send_keys(:enter)
browser.link(href: "/level/1/film/326/sr/1/").click
page2 = Nokogiri::HTML.parse(browser.html)

browser.text_field(class:
"header-fresh-search-partial-component__field").set(film3)
browser.send_keys(:enter)
browser.link(href: "/level/1/film/220589/sr/1/").click
page3 = Nokogiri::HTML.parse(browser.html)

film_name1 = page1.css("h1.moviename-big").text
film_name2 = page2.css("h1.moviename-big").text
film_name3 = page3.css("h1.moviename-big").text

year_1 = page1.css("table.info tbody tr td")[1].text.strip
year_2 = page2.css("table.info tbody tr td")[1].text.strip
year_3 = page3.css("table.info tbody tr td")[1].text.strip

genre1 = page1.css("table.info tbody tr[11] a")[0].text
genre2 = page2.css("table.info tbody tr[11] a")[0].text
genre3 = page3.css("table.info tbody tr[11] a")[0].text

country1 = page1.css("table.info tbody tr[2] td[2] a")[0].text
country2 = page2.css("table.info tbody tr[2] td[2] a")[0].text
country3 = page3.css("table.info tbody tr[2] td[2] a")[0].text

director1 = page1.css("table.info tbody tr[4] td[2] a")[0].text
director2 = page2.css("table.info tbody tr[4] td[2] a")[0].text
director3 = page3.css("table.info tbody tr[4] td[2] a")[0].text

actors1 = page1.css("div#actorList ul a")[0..4].map{|a| a.text}
actors2 = page2.css("div#actorList ul a")[0..4].map{|a| a.text}
actors3 = page3.css("div#actorList ul a")[0..4].map{|a| a.text}

film_structure = [
  {
    film_name1 => {
      "year" => year_1,
      "genre" => genre1,
      "country" => country1,
      "director" => director1,
      "5 main actors" => actors1
    }
  },
  {
    film_name2 => {
      "year" => year_2,
      "genre" => genre2,
      "country" => country2,
      "director" => director2,
      "5 main actors" => actors2
    }
  },
  {
    film_name3 => {
      "year" => year_3,
      "genre" => genre3,
      "country" => country3,
      "director" => director3,
      "5 main actors" => actors3
    }
  }
]

puts film_structure

binding.pry

#puts 1

end
