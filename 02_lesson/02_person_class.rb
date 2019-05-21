# Hint: let first_name and last_name be "states" and create an instance method called name that uses those states.

class Person
  attr_accessor :first_name, :last_name

  def initialize(name)
    array = name.split
    @first_name = array[0]
    @last_name = array.count < 1 ? array[1] : ""
  end


  def name
    "#{@first_name} #{@last_name}".strip
  end
end


bob = Person.new('Robert')
bob.name                  # => 'Robert'
p bob.first_name            # => 'Robert'
p bob.last_name             # => ''
p bob.last_name = 'Smith'
p bob.name                  # => 'Robert Smith'
