stock = {
  "fraises" => { price: 4.99, quantity: 10 },
  "pommes" => { price: 3.5, quantity: 14 },
  "pêches" => { price: 4.99, quantity: 20 },
  "bananes" => { price: 6.99, quantity: 60 },
}

total = 0
cart = {}
item = nil

puts "Bienvenue sur notre site ! Voici notre stock :"
stock.each do |name, details|
  puts "Nous avons #{details[:quantity]} #{name} à #{details[:price]}€ l'unité"
end

while item != ""
  puts "Quel article voulez-vous acheter ? (appuyer sur entrée quand vous avez fini)"
  item = gets.chomp
    if stock.has_key?(item)
      puts "Nous avons #{stock[item][:quantity]} #{item} en stock !"
      puts "Combien en désirez-vous ?"
      quantity = gets.chomp.to_i
      while quantity > stock[item][:quantity]
        puts "Désolé, pas assez. Prenez-en moins ! Combien ?"
        quantity = gets.chomp.to_i
      end
      cart[item] += stock[item][:quantity]
      total += stock[item][:price] * quantity
      stock[item][:quantity] -= quantity
    elsif item == ""
      puts "Merci de la visite, bisous !"
    else
      puts "Désolé, nous n'avons pas de #{item}, on en commande"
    end
end

cart.each_with_index do |item, index|
  puts "Voici votre ticket de"
  puts "- #{stock[item][:quantity]} #{item} à #{stock[item][:price]}"
end


# cart = {
#   "fraises" => 10,
#   "pommes" => 5
# }




