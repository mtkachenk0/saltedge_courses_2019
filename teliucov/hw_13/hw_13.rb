require 'watir'
require 'webdrivers'
require 'nokogiri'
require 'json'

FAVORITE_MOVIES = %w[матрица терминатор троя]

browser = Watir::Browser.new

kinopoisk = browser.goto('https://kinopoisk.ru')
result_info = []

FAVORITE_MOVIES.each do |movie|
  search_text = browser.text_field(name: 'kp_query').set(movie)

  button = browser.button(class: 'header-fresh-search-partial-component__button')
  button.click

  most_wanted = browser.div(class: 'most_wanted').div(class: 'info').element(tag_name: 'p')

  link = most_wanted.element(tag_name: 'a')

  page_info = Nokogiri::HTML(browser.html)

  info_table = page_info.search('table.info tbody')

  trs = info_table.search('tr')
  name = page_info.css('h1.moviename-big').text
  year = trs[0].css('td')[1].text.strip
  country = trs[1].css('td')[1].text.strip
  genre = trs[10].css('td')[1].text.strip.tr("\n ", '')
  director = trs[3].css('td')[1].text.strip

  actors_list = page_info.css('div#actorList').search('li').first(5).map(&:text)

  result = {
      "#{name}": {
          year: year,
          genre: genre,
          country: country,
          director: director,
          actors: actors_list
      }
  }
  result_info << result
end

puts JSON.pretty_generate result_info



