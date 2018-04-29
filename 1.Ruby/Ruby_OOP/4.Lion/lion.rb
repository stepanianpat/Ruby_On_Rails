require_relative "mammal"
class Lion < Mammal
  def fly
    @health -=10
    self
  end

  def attack_town
    @health -=50
    self
  end

  def eat_humans
    @health +=20
    self
  end

  def lionhealth
    puts 'This is a lion'
    self.display_health
  end
end

tiger = Lion.new
tiger.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.lionhealth
