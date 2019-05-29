class Wedding
  attr_reader :guests, :flowers, :songs

  def prepare(preparers)
    preparers.each do |preparer|
      preparer.prepare_wedding(self)
    end
  end
end

class Chef
  def prepare_wedding(wedding)
    prepare_food(wedding.guests)
  end

  def prepare_food(guests)
    puts "preparing food"
  end
end

class Decorator
  def prepare_wedding(wedding)
    decorate_place(wedding.flowers)
  end

  def decorate_place(flowers)
    puts "preparing flowers"
  end
end

class Musician
  def prepare_wedding(wedding)
    prepare_performance(wedding.songs)
  end

  def prepare_performance(songs)
    puts "preparing songs"
  end
end

event = Wedding.new
wedding_helpers = [Chef.new, Decorator.new, Musician.new]

event.prepare(wedding_helpers)
