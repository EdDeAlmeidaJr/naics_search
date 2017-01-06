require 'httparty'
require 'nokogiri'

require 'naics/version'

module NAICS

  @search_url = 'https://www.naics.com/naics-search-results/'

  def self.description(code)
  	@code = code
  	@doc = Nokogiri::HTML(result_page)
  end

  def self.result_page
  	HTTParty.post(@search_url, :query => {:words => @code})
  end

end