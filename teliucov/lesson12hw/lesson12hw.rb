require 'restclient'
require 'nokogiri'
require 'json'
require 'fileutils'
NEWS_BLOCK_WRAPPER = '#post-list-container'
ARTICLE_OBJECT = NEWS_BLOCK_WRAPPER + ' > article'
ARTICLE_IMAGE = 'figure.post-list-container-item-img > a > img'
ARTICLE_TITLE = '.post-list-container-item-text > h2 > a'

page_result = RestClient.get('https://point.md/ru').body
page = Nokogiri::HTML(page_result)

news_list = page.css(ARTICLE_OBJECT).first(10)

result = {}

news_list.each do |element|
  title = element.css(ARTICLE_TITLE).text
  image_url = element.css(ARTICLE_IMAGE)[0]['src']
  result_key = title.tr(' ', '-')
  result[result_key.to_s] = image_url
  File.open("#{result_key}.jpg", 'wb') do |file|
    file << RestClient.get(image_url)
  end
end
puts JSON.pretty_generate(result)

