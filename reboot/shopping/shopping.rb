stock = {
  "fraise" => {price: 4.99, amount: 10},
  "pomme" => {price: 3.5, amount: 14},
  "pêche" => {price: 4.99, amount: 20},
  "banane" => {price: 6.99, amount: 60},
}

# Demander à l'utilisateur quelle quantité
# Incrémenter la quantité
# Faire diminuer notre quantité

item = ""
cart = {}
total = 0

while item != "exit"
  puts "What do you want? type exit to finish shopping"
  item = gets.chomp
  if stock.include?(item)
    cart << item
    total += stock[item][:price]
  elsif item != "exit"
    puts "Désolé '#{item}' n'est pas disponible"
  else
    puts "Voici les articles choisis et la quantité :"
  end
end

# Ameliorer l'affichage avec le prix
cart.each_with_index do |item, index|
   puts "- #{item} à #{stock[item][:price]} €"
   # array.inject(...) do |c, v|
end

  puts "Le prix de vos articles est de #{total}€"



# Afficher le prix total
# amount = stock.inject {|sum, hash| sum + hash[:amount]}
# puts "Le prix de vos articles est de #{stock[item]}"

# arr = [{:amount=>10, :gl_acct_id=>1, :alt_amount=>20}, {:amount=>20, :gl_acct_id=>2, :alt_amount=>30}]
# amount = arr.inject(0) {|sum, hash| sum + hash[:amount]} #=> 30
# {:amount => amount} #=> {:amount => 30}
