def calculate(first_number, second_number, operator)
  if operator == "+"
    result = first_number + second_number
  elsif operator == "-"
    result = first_number - second_number
  elsif operator == "*"
    result = first_number * second_number
  else
    result = ""
  end
  return result
end

