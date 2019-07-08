class Person
  @@total_people = 0

  def self.total_people
    @@total_people
  end

  def initialize
    @@total_people += 1
  end

  def total_people
    @@total_people
  end
end

p Person.total_people
Person.new
Person.new
p Person.total_people

bob = Person.new
p bob.total_people

joe = Person.new
p joe.total_people

p Person.total_people
