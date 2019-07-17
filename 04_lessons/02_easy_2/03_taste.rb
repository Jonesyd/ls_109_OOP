module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end
# orange, taste

class HotSauce
  include Taste
end
#HotSauce, taste
