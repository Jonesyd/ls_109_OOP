class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(name, height, weight)
    self.name = name
    self.height = height
    self.weight = weight
  end

  def change_info(name, height, weight)
    self.name = name
    self.height = height
    self.weigth = weight
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end

  puts self
end

GoodDog

# sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
# p sparky.what_is_self
