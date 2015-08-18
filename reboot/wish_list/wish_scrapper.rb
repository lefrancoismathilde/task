require "nokogiri"
require "open-uri"


  # puts "Quel produit voulez-vous chercher sur Etsy ?"
  # product = gets.chomp

def etsy_scrapper(product)
  url = "https://www.etsy.com/search?q=#{product}"

  file = open(url)
  doc = Nokogiri::HTML(file)
  results = []

  doc.search(".card-meta").each do |item|
    results << item.search(".card-title")[0]["title"]
  end

  return results[0..9]
end



# search renvoie une sorte de tableau
# chaque élément de ce tableau a des méthodes cool comme .text ou ["href"]
