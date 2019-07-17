class Cat
  attr_reader :type

  def initialize(type)
    @type = type
  end

  def to_s
    "I am a #{type.upcase} cat"
  end

end

paddy = Cat.new("persian")
puts paddy.to_s
