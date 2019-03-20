require 'watir'
require 'nokogiri'

puts "Choose your own goddamn movies!"
puts "First movie:"
movie1 = gets.chomp.to_s
puts "Second movie:"
movie2 = gets.chomp.to_s
puts "Third movie:"
movie3 = gets.chomp.to_s

browser = Watir::Browser.new

browser.goto("kinopoisk.ru")
#Searching for movie 1
browser.text_field(class: "header-fresh-search-partial-component__field").set(movie1)
browser.send_keys(:enter)
browser.p(class: "name").a.click
page1 = Nokogiri::HTML.parse(browser.html)

#Searching for movie 2
browser.text_field(class: "header-fresh-search-partial-component__field").set(movie2)
browser.send_keys(:enter)
browser.p(class: "name").a.click
page2 = Nokogiri::HTML.parse(browser.html)

#Searching for movie 3
browser.text_field(class: "header-fresh-search-partial-component__field").set(movie3)
browser.send_keys(:enter)
browser.p(class: "name").a.click
page3 = Nokogiri::HTML.parse(browser.html)


def list(page)
	title		= page.css('h1').text
	year		= page.css('div[style="position: relative"]').text.split[0]
	genre		= page.css('span[itemprop="genre"]').text.split(',')[0]
	country		= page.css('div[style="position: relative"]').text.split[1]
	director	= page.css('td[itemprop="director"]').text
	actors 		= page.css('li[itemprop="actors"]').map {|i| i.text}[0..4]
	{"#{title}" => {"year" => year, "genre" => genre, "country" => country, "director" => director, "5 main actors" => actors}}
end

puts [list(page1),list(page2),list(page3)]
