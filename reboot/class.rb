class Restaurant
  attr_reader  :name, :clients
  attr_accessor :capacity

  def initialize(name, city, capacity, category)
    @name = name
    @city = city
    @capacity  = capacity
    @category =
    @clients = []
  end

  def add_reservation(name)
    @clients << name
  end

end

cerises = Restaurant.new("Temps des cerise", "Paris", 30, "français")

cerises.add_reservation("Mathilde")
p cerises.clients
