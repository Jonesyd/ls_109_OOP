# Now create a smart name= method that can take just a first name or a full name, and knows how to set the first_name and last_name appropriately.

class Person
  attr_accessor :first_name, :last_name
  attr_reader :name

  def initialize(name)
    array = name.split
    @first_name = array[0]
    @last_name = array.count > 1 ? array[1] : ""
  end

  def name=(string)
    if string.split.count > 1
      @name = string
      @first_name = string.split[0]
      @last_name  = string.split[1]
    else
      @first_name = string
      @last_name = ""
    end
  end

  def name
    "#{@first_name} #{@last_name}".strip
  end
end

bob = Person.new('Robert')
p bob.name                == 'Robert'
p bob.first_name          == 'Robert'
p bob.last_name           == ''
bob.last_name = 'Smith'
p bob.name                == 'Robert Smith'

bob.name = "John Adams"
p bob.first_name          == 'John'
p bob.last_name           == 'Adams'
