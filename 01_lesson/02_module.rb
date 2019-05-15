module Hello

  def hello(name)
    puts "hello #{name.capitalize}"
  end

end

class ExampleClass
  include Hello
end


eg = ExampleClass.new

eg.hello("craig")

puts ExampleClass.ancestors
