require 'httparty'
require 'nokogiri'

require 'naics/version'

module NAICS

  @search_url = 'https://www.naics.com/naics-code-description/'

  def self.search(code)
  	@code = code
  	@doc = Nokogiri::HTML(result_page)
  end

  def self.result_page
  	HTTParty.post(@search_url, :query => {:code => @code})
  end

  def self.version_info
  end

end