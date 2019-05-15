class MyCar
  attr_accessor :color
  attr_reader :year

  def self.gas_mileage(km, litres)
    km.to_f / litres.to_f
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(speed)
    self.speed = speed
  end

  def brake(speed)
    self.speed = speed
  end

  def turn_off
    self.speed = 0
  end

  def spray_paint(color)
    self.color = color
    puts "You are spray painting the #{@model} #{self.color}"
  end

  def to_s
    puts "#{year}, #{color}, #{@model}, #{@speed}"
  end
end

ute = MyCar.new("2002", "white", "Ford")

puts MyCar.gas_mileage(100, 25)
puts ute
# ute.to_s
