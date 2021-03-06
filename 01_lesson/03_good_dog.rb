class GoodDog

  attr_accessor :name, :height, :weight

  # def name
  #   @name
  # end
  #
  # def name=(name)
  #   @name = name
  # end

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end

  def self.what_am_i
    "I'm a GoodDog class!"
  end
end

puts GoodDog.what_am_i

# sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
# puts sparky.info
#
# sparky.change_info("Spartacus", "24 inches", "45 lbs")
# puts sparky.info


# sparky = GoodDog.new("Sparky")
# puts sparky.speak
# puts sparky.name
# sparky.name = "Spartacus"
# puts sparky.name
#
#
# fido = GoodDog.new("Fido")
# puts fido.speak
# puts fido.name
