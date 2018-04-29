require_relative "human"
class Ninja
  def initialize
    super
    @stealth = 175
  end

  def steal(obj)
    if obj.class.ancestors.include?(Human)
      @health +=10
      true
    else
      puts "what are you stealing from?"
    end
  end

  def get_away
    @health -=15
    self
  end

end
