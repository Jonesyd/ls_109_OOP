class Television
  def self.manufacturer
    "tv manufacturer"
  end

  def model
    "tv model"
  end
end

tv = Television.new
# tv.manufacturer #NoMethodError
puts tv.model

puts Television.manufacturer
Television.model #NoMethodError
