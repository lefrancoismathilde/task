require "nokogiri"
require "open-uri"

url = "https://www.beatport.com/top-100"
noko = Nokogiri::HTML(open(url))

artists = noko.search('.buk-track-artists').map do |artist|
  artist.text.gsub(/\s+/, "")
end

titles = noko.search('.buk-track-primary-title').map do |element|
  element.text
end

p artists

