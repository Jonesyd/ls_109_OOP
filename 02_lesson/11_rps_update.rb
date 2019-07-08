class Move
  VALUES = ["rock", "paper", "scissors", "sprock", "lizard"]

  def initialize(value)
    @value = value
  end

  def scissors?
    @value == "scissors"
  end

  def paper?
    @value == "paper"
  end

  def rock?
    @value == "rock"
  end

  def sprock?
    @value == "sprock"
  end

  def lizard?
    @value == "lizard"
  end

  def >(other_move)
    (rock? && (other_move.scissors? || other_move.lizard?)) ||
      (paper? && (other_move.rock? || other_move.sprock?)) ||
      (scissors? && (other_move.paper? || other_move.lizard?)) ||
      (sprock? && (other_move.rock? || other_move.scissors?)) ||
      (lizard? && (other_move.sprock? || other_move.paper?))
  end

  def <(other_move)
    (rock? && (other_move.sprock? || other_move.paper?)) ||
      (paper? && (other_move.scissors? || other_move.lizard?)) ||
      (scissors? && (other_move.rock? || other_move.sprock?)) ||
      (sprock? && (other_move.lizard? || other_move.paper?)) ||
      (lizard? && (other_move.scissors? || other_move.rock?))
  end

  def to_s
    @value
  end
end

class Player
  attr_accessor :move, :name, :score

  def initialize
    set_name
    @score = 0
  end
end

class Human < Player
  def set_name
    n = nil
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value."
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, scissors, sprock, or lizard:"
      choice = gets.chomp.downcase
      break if Move::VALUES.include? choice
      puts "Come on... invalid choice... try again..."
    end
    self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ["R2D2", "Hal", "Chappie", "Sonny", "Number 5"].sample
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
  end
end

class PRSGame
  attr_accessor :human, :computer
  GAMES = 3

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to #{Move::VALUES.join(", ")}!"
  end

  def display_goodbye_message(player)
    puts "First to #{GAMES} games wins! And that was #{player.name}"
    puts "Thanks for playing #{Move::VALUES.join(", ")}. Good bye!"
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
  end

  def display_winner
    if human.move > computer.move
      puts "#{human.name} won!"
      update_score(human)
    elsif human.move < computer.move
      puts "#{computer.name} Won!"
      update_score(computer)
    else
      puts "It's a tie"
    end
  end

  def update_score(player)
    player.score += 1
    @winner = player if player.score >= GAMES
  end

  def game_over?
    human.score == GAMES ||
    computer.score == GAMES
  end

  def display_score
    puts "#{human.name}'s score is #{human.score}"
    puts "#{computer.name}'s score is #{computer.score}"
  end

  def play_again?
    answer = nil
    loop do
      puts "First to #{GAMES} games wins the match. Would you like to play another game? (y/n)"
      answer = gets.chomp
      break if ["y", "n"].include? answer.downcase
      puts "Sorry, must be y or n."
    end

    return false if answer.downcase == "n"
    return true if answer.downcase == "y"
  end

  def play
    display_welcome_message

    loop do
      human.choose
      computer.choose
      display_moves
      display_winner
      display_score
      if game_over?
        display_goodbye_message(@winner)
        break
      end
      break unless play_again?
    end
  end
end

PRSGame.new.play
