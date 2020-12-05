class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start
    puts "Welcome to War! (or Peace) This game will be played with 52 cards."
    puts "The players today are Megan and Aurora."
    puts "Type 'GO' to start the game."

    answer = gets.chomp

    if answer == "GO" || answer == "Go" || answer == "go"
      puts "Now starting game..."
    else
      puts "Goodbye"
    end

    

  end



end
