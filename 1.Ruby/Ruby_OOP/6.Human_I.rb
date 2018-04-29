class Human
  attr_accessor :strength, :intelligence, :stealth, :health
  def initialize
    @strength = 3
    @intelligence = 3
    @stealth = 3
    @health = 100
  end

  def attack(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -=5
      true
    else
      puts "what are you attacking?"
    end
  end
end

h1 = Human.new
h2 = Human.new

h1.attack(h2)
puts h2.health
puts h1.health

h1.attack("h3")
puts h1.health



#################### PLATFORM SOLUTION  #############
class Human
  attr_accessor :strength, :intelligence, :stealth, :health
  def initialize
    @strength = 3
    @intelligence = 3
    @stealth = 3
    @health = 100
  end

  def attack(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 10
      true
    else
      false
    end
  end
end

h = Human.new
h2 = Human.new
puts h.attack(h2)
puts h.attack("Not a Human")
puts h2.health
