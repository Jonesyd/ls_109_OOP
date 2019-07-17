class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

paddy = AngryCat.new(5, "paddy")
tabby = AngryCat.new(3, "tabby")

paddy.name
tabby.name
