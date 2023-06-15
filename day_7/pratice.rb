class Animal
  attr_accessor :name, :fav_food

  def initialize(animal)
    @name = animal[:name]
    @fav_food = animal[:food]
  end

  def about
    "#{name} love to eat #{fav_food}"
  end
end

class Dog

  def initialize(name)

  end
end
