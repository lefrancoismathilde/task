def normalize(word)
  return word.stripe.capitalize
end

def full_name(first_name, last_name)
  normalized_name = normalize(first_name)
  normalized_name = normalize(last_name)
  return "#{normalize(first_name)} #{normalize(first_name)}"
end

puts full_name(first_name, last_name)
