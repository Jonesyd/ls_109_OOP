module Swimmable
  def swim
    "I'm swimming"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable
end

sparky = Dog.new
nemmo = Fish.new
paws = Cat.new
mams = Mammal.new

p sparky.swim
p nemmo.swim
# p paws.swim
p mams.swim
