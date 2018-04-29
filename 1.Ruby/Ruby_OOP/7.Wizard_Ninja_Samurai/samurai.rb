require_relative "human"
class Samurai
  @@count = 0
  def initialize
    super
    @health = 200
    @@count += 1
  end

  def death_blow(obj)
    if obj.class.ancestors.include?(Human)
      obj.health = 0
      true
    else
      puts "who are you trying to kill?"
    end
  end

  def meditate
    @health = 200
  end

  def how_many
    puts "There are #{@@count} Samurai's currently!"
  end

end
