horses = %w(Julien Mathilde Laurent Olivier Benjamin)

def print_array(array)
  ranking.each_with_index do |name, index|
  puts "#{index + 1} : #{name}"
  end
end

puts "Bienvenue à Longchamps, voici la liste des participants :"
horses.each_with_index do |name, index|
  puts "Le cheval #{name} est numéro #{index + 1}"
end

pari = []
puts "Choississez le numéro d'un cheval"
pari << horses[gets.chomp.to_i - 1]
puts "Puis un deuxième cheval"
pari << horses[gets.chomp.to_i - 1]


puts "À vos marques"
sleep 1
puts "Prêt"
sleep 1
puts "Partez"
sleep 1

puts "Course de folie, découvrez les résultats :"

ranking = horses.shuffle
pari_me = ranking[0..2]
# print_array(ranking)

ranking.each_with_index do |name, index|
  puts "#{index + 1} : #{name}"
end

if pari_me == ranking[0..2]
  puts "You win"
else
  puts "You loose"
end
