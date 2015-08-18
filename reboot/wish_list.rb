require_relation = wish_scrapper


wish_list =[
              { name: "jeans", checked: false },
              { name: "baskets", checked: false }

            ]

answer = ""


puts "Bienvenue sur votre wish list !"
while answer != "exit"
 puts "Voulez-vous faire ? (read|add|delete|check|inspire|exit)"
 answer = gets.chomp

  if answer == "read"
    puts "Vous avez dans votre liste : "
    wish_list.each_with_index do |wish, index|
      if wish_list[index][:checked] == true
        puts "#{index + 1} >> #{wish[:name]} [X]"
      else
        puts "#{index + 1} >> #{wish[:name]} [ ]"
      end
    end

  elsif answer == "add"
    puts "Je vous écoute :)"
    name = gets.chomp
    wish_list << {name: name, checked: false}

    puts "Waouu des #{name} ? C'est un super choix !"

  elsif answer == "delete"
    puts "Ah bon..! Quel numéro d'objet ?"
    answer = gets.chomp.to_i - 1
    wish_list.delete_at(answer)

    puts "Ok, quel dommage !"

  elsif answer == "check"
    puts "Quel est le numéro d'objet à checker ?"
    answer = gets.chomp.to_i - 1
      if wish_list[answer][:checked] == false
        wish_list[answer][:checked] = true
      else
        wish_list[answer][:checked] = false
      end

    puts "Ok, c'est checké !"

  elsif answer == "inspire"
    puts "Tu n'as pas d'imagination ! Pour quel produit souhaites-tu l'inspiration de Etsy ?"
    choice = gets.chomp



  elsif answer == "exit"
    puts "Salut l'ami !"
  else
    puts "Désolé, je n'ai pas compris.."
  end
end

p wish_list
