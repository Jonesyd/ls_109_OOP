class Student
  attr_accessor :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_person)
    grade > other_person.grade
  end

  protected
  attr_reader :grade
end

jonesy = Student.new("Jonesy", 90)
bob = Student.new("Bob", 75)

puts jonesy.name

puts "Well done!" if jonesy.better_grade_than?(bob)
