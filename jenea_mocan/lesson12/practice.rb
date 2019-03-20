require "watir"
browser = Watir::Browser.new
browser.goto("kinopoisk.ru")
browser.text_field(class: "header-fresh-search-partial-component__field").set("Интерстеллар")
browser.send_keys(:enter)
browser.a(href: "/level/1/film/258687/sr/1/").click
actors = browser.lis(itemprop: "actors")[0..4]
actors.map {|i| i.text}