# Create a class called MyCar. When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car. Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well. Create instance methods that allow the car to speed up, brake, and shut the car off.

# Add an accessor method to your MyCar class to change and view the color of your car. Then add an accessor method that allows you to view, but not modify, the year of your car.

# You want to create a nice interface that allows you to accurately describe the action you want your program to perform. Create a method called spray_paint that can be called on an object and will modify the color of the car.

class MyCar
  attr_accessor :color
  attr_reader :year

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

end

ute = MyCar.new("2002", "white", "Ford")

puts ute.color
ute.spray_paint("green")
puts ute.color


# change color
puts ute.color
ute.color = "red"
puts ute.color

puts ute.year

# puts ute.speed
# puts ute.year
# puts ute.color
# puts ute.model
#
# ute.speed_up("150")
# puts ute.speed
# ute.brake("100")
# puts ute.speed
# ute.turn_off
# puts ute.speed
