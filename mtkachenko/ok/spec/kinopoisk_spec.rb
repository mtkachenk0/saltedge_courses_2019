require 'spec_helper'
require_relative "../app/kinopoisk"

describe Kinopoisk do
  let(:nokogiri)     { Nokogiri::HTML }
  # let(:html_data)    { double(html: File.read("spec/fixtures/main_html.html")) }
  let(:main_html)    { nokogiri.fragment(File.read("spec/fixtures/main_html.html")) }
  let(:percent_html) { nokogiri.fragment(File.read("spec/fixtures/percent_html.html"))}
  # let(:browser)      { double(div: html_data, goto: nil) }

  before do
    allow(subject).to receive(:browser)#.and_return(browser)
    allow(subject).to receive(:main_html) { main_html }
    allow(subject).to receive(:percent_html) { percent_html }
  end

  describe "#movie_info" do
    it "parses data" do
      expect(subject.send(:movie_info)).to eq({
       movie_name:   "Шазам!",
       percent:      "90%",
       premier_date: "3 апреля 2019"
      })
    end
  end
end
