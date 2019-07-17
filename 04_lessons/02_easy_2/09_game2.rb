class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    "#rules of play"
  end

  def play
    "select your numbers"
  end
end

fun = Bingo.new
puts fun.play
