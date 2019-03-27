# Lesson 13 HW

require 'nokogiri'
require 'watir'

browser=Watir::Browser.new
browser.goto('kinopoisk.ru')
browser.text_field(class: "header-fresh-search-partial-component__field").set ("matrix")
btn = browser.button(class: "header-fresh-search-partial-component__button")
btn.exists?
btn.click
link = browser.div(class: "search_results")
link.exists?
link.click

page = Nokogiri::HTML.parse(browser.html)