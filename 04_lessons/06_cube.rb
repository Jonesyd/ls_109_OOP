class Cube
  attr_reader :volume

  def initialize(volume)
    @volume = volume
  end
end

q = Cube.new(50)
puts q.volume
