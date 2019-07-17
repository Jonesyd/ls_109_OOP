class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

hello = Hello.new
hello.hi #puts Hello

# hello = Hello.new
# hello.bye #NoNethodError

# hello = Hello.new
# hello.greet #NoArgumentError

hello = Hello.new
hello.greet("Goodbye") #puts Goodbye

Hello.hi #NoMethodError
