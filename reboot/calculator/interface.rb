require_relative "calculator"

def valid_input?
  input = gets.chomp


response = "y"

while response == "y"

  puts "Quel est votre nombre ?"
  num_1 = gets.chomp.to_i

  puts "Choisissez un deuxième nombre"
  num_2 = gets.chomp.to_i

  puts "Quelle opération souhaitez-vous réaliser ?"
  operator = gets.chomp

  result = calculate(num_1, num_2, operator)

  if result == ""
    puts "Failed"
  else
    puts "le résultat est #{result}."
  end

  puts "Voulez-vous effectuer une autre opération? (y,n)"
  response = gets.chomp

end

puts "Bye bye"
