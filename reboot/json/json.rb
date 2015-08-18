require 'json'
require 'open-uri'

api_url = 'http://api.icndb.com/jokes/random?escape=javascript'

open(api_url) do |stream|
  quote = JSON.parse(stream.read)
  puts quote['value']['joke']
end
