require 'httparty'
require 'nokogiri'

require 'naics/version'

module NAICS

  @search_url = 'https://www.naics.com/naics-code-description/'

  def self.search(code)
  	@code = code
  	@doc = Nokogiri::HTML(result_page)
  	result = Hash.new
  	resutt[:code] = code
  	result[:description] = description
  	result[:explanation] = explanation
  	result
  end

  def self.result_page
  	HTTParty.post(@search_url, :query => {:code => @code})
  end

  def self.description
  	arr = @doc.css("h3[class='sixDigit']").text.split
  	arr.shift
  	(arr.length > 0) ? arr.join(' ') : nil 	
  end

  def self.explanation
  	@doc.css("p[class='copy sixDigitCopy']").text.strip.split('Illustrative Examples:')[0]
  end

  def self.version_info
    puts "NAICS gem - v#{NAICS::VERSION}"
    puts "Author: Ed de Almeida (edvaldoajunior@gmail.com)"
  end

end