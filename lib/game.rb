class Game
  attr_reader :player1, :player2, :turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn_counter = 1
  end


  def start
    puts "Welcome to War! (or Peace) This game will be played with 52 cards."
    puts "Our players today are Megan(P1) and Aurora(P2)"
    puts "Type 'GO' to start the game."
    puts "~" * 40

    answer = gets.chomp

    if answer == "GO" || answer == "Go" || answer == "go"
      puts "Now starting game..."
    else
      puts "Goodbye"
    end


  end


  def run_game
    loop do
      turn = Turn.new(player1, player2)
      turn.type
      winner = turn.winner


      puts "Turn #{@turn_counter}: #{turn.type.capitalize}"
      if winner == "No Winner"
        puts winner
      elsif turn.type == :basic
        # puts "P1 ~ #{@player1.deck.cards[0]} vs P2 ~ #{@player2.deck.cards[0]}"
        puts "#{winner.name} has won 2 cards."
      else turn.type == :war || :war_no_cards
        puts "#{winner.name} has won 6 cards."
      end
      turn.pile_cards
      turn.award_spoils(winner)
      @turn_counter += 1



     if @player1.has_lost? == true
        puts "~*~*~*~*~#{player2.name} has won the game!~*~*~*~*~"
        break
      elsif @player2.has_lost? == true
        puts "~*~*~*~*~#{player1.name} has won the game!~*~*~*~*~"
        break
      elsif @turn_counter == 1000001
        puts "~~~~~~~ DRAW ~~~~~~~"
        break
      else
      end
    end

  end

end
