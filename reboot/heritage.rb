class Restaurant

  def self.categories
    return %w(bistrot japaneses french italian)
  end

  def self.price_for(category)
    case category
    when "japonese"
      price = 13
    when "italian"
      price = 20
    end
    return price
  end

  attr_accessor :name, :city
  def initialize(name, city)
    @name = name
    @city = city
    @clients = []
  end

end

class FastFood < Restaurant
  attr_accessor :preparation_time
  def initialize(name, city, preparation_time)
    @name = name
    @city = city
    @preparation_time = preparation_time
  end

end

class Gastronomic < Restaurant

  def initialize(name, city, stars)
    @name = name
    @city = city
    @stars = stars
  end

end

mcdonald = FastFood.new("McDo", "Paris", 10)

puts Restaurant.price_for("italian")

