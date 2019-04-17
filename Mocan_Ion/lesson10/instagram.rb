require 'watir'
require 'nokogiri'
require 'rest-client'
require 'open-uri'

puts "Write login"
login = $stdin.gets.chomp
puts "Write password"
password = $stdin.gets.chomp
random_time = rand(0..2).to_f

browser = Watir::Browser.new
browser.goto 'https://www.instagram.com/accounts/login/'
browser.text_field(type: 'text').set(login)
browser.text_field(type: 'password').set(password)
browser.send_keys:enter
browser.button(class: "aOOlW").click
browser.span(class: 'glyphsSpriteUser__outline__24__grey_9', 'u-__7').click
browser.li(class: 'YLH36I').a.click
browser.button(type: 'button').click
browser.button(type: 'button').click
browser.button(type: 'button').click


=begin
body > div.RnEpo.Yx5HN > div > div.isgrP > ul > div > li:nth-child(2) > div > div.Pkbci > button
document.querySelector('body > div.RnEpo.Yx5HN > div > div.isgrP > ul > div > li:nth-child(2) > div > div.Pkbci > button')
/html/body/div[3]/div/div[2]/ul/div/li[2]/div/div[2]/button
<button class="_0mzm-.sqdOP.L3NKy._8A5w5" type="button">Following</button>
=end
sleep(random_time)
puts "end"
#@browser.div(class: "search_results").p(class: "pic").link('data-type': "film").click
