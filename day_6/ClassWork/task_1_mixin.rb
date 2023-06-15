# "Create a class Animal with attributes name and scientific_name.
# Write a class Human with attributes first_name, last_name and scientific_name.
# Write a mixin called Name which has a method complete_name.
# Include this mixin in both Animal and Human class.

module Name
  def complete_name
    if(self.scientific_name == "Homo Sapiens")
      "#{self.first_name} #{last_name}(#{self.scientific_name})"
    else
      "#{self.name}(#{self.scientific_name})"
    end


  end
end

class Animal
  include Name
  attr_accessor :name,:scientific_name

  def initialize(name,scientific_name)
    @name = name
    @scientific_name = scientific_name
  end
end

class Human
  include Name
  attr_accessor :first_name, :last_name
  attr_reader :scientific_name

  def initialize(first_name,last_name)
    @first_name = first_name
    @last_name = last_name
    @scientific_name = "Homo Sapiens"
  end
end

animal = Animal.new("abc","xyz")
puts animal.complete_name

human = Human.new("Ram","Basu")
puts human.complete_name

# The method should return “name(scientific_name)”
# for animals e.g. Frog(Rana Tigrina).
# For Human it should return “first_name last_name(scientific name)” e.g. John Doe(Homo Sapiens)"
