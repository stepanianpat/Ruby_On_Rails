class Mammal
  attr_accessor :name
  def initialize(name)
    @name = name
    @health = 150
  end

  def pet
    @health += 5
    self
  end

  def walk
    @health -=1
    self
  end

  def run
    @health -=10
    self
  end

  def display_health
    puts "My name is #{@name}, my current health is #{@health}"
  end
end

# isaac = Mammal.new('isaac')
# isaac.pet.pet.run.run.walk.display_health
