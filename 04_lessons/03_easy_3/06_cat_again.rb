class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    @age += 1
  end
end

tabby = Cat.new("Persian")
puts tabby.type
puts tabby.age

tabby.make_one_year_older
puts tabby.age
