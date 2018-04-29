require_relative 'mammal'
class Dog < Mammal
  def doghealth
    self.display_health
  end

  def dogpet
    self.pet
  end

  def dogwalk
    self.walk
  end

  def dogrun
    self.run
  end

end

dog1 = Dog.new('cutie')
dog1.dogrun.dogrun.dogpet.doghealth
