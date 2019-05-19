class Vehicle
  attr_accessor :color
  attr_reader :year

  @@vehicles = 0

  def self.vehicle_count
    puts "The number of vehicles is #{@@vehicles}"
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@vehicles += 1
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

  def self.gas_mileage(km, litres)
    km.to_f / litres.to_f
  end

  def to_s
    puts "#{year}, #{color}, #{@model}, #{@speed}"
  end

  def age
    puts "The age of the vehicle is #{age_calc} years old"
  end

  private

  def age_calc
    Time.new.year - year.to_i
  end

end

class MyCar < Vehicle
end

module Trailers
  def capacity(trailers)
    20 * trailers
  end
end

class MyTruck < Vehicle
  include Trailers
end

ute = MyCar.new("2002", "white", "Ford")
puts ute
mack = MyTruck.new("1980", "white", "Mack")


Vehicle.vehicle_count

capacity = mack.capacity(2)
puts capacity

puts "----MyCar Ancestors----"
puts MyCar.ancestors
puts "----MyTruc Ancestors----"
puts MyTruck.ancestors
puts "----Vehicles Ancestors----"
puts Vehicle.ancestors

ute.age
