require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  def scrape_gbbo_url
  # the url to get a view with all technical challenges and not display the side bar
  gbbo_url = "https://thegreatbritishbakeoff.co.uk/recipes/all/?filter[collection]=81showFilter=false"

  # this will fetch the page and return the html
  html = open(gbbo_url)

  # Pass into nokogiri to get a set of nodes
  doc = Nokogiri::HTML(html)

  nodes = doc.css('table > tbody > tr > th > small > a')

  # when file run from terminal, will drop into pry
  # as opposed to opening pry and loading file?
  binding.pry
end
end

scrape = Scraper.new
scrape.scrape_gbbo_url