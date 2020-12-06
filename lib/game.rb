class Game
  attr_reader :player1, :player2, :turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn_counter = 1
  end


  def start
    puts "Welcome to War! (or Peace) This game will be played with 52 cards."
    # puts "This game requires 2 players."
    # puts "Who will be player 1?"
    # name1 = gets.chomp.to_s
    # puts "Who will be player 2?"
    # name2 = gets.chomp.to_s
    # puts "The players today are #{name1} and #{name2}."
    puts "Our players today are Megan and Aurora"
    puts "Type 'GO' to start the game."

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
      puts "Turn #{@turn_counter} - #{player1.deck.cards[0]} vs #{player2.deck.cards[0]}"
      if winner == "No Winner"
        puts winner
      else
        puts "#{winner.name} has won this hand."
      end
      turn.pile_cards
      turn.award_spoils(winner)
      @turn_counter += 1

     if @player1.has_lost? == true
        puts "~~~~~~~#{player1} has won the game!~~~~~~~"
        break
      elsif @player2.has_lost? == true
        puts "~~~~~~~#{player2} has won the game!~~~~~~~"
        break
      elsif @turn_counter == 1000001
        puts "~~~~~~~ DRAW ~~~~~~~"
        break
      else
      end
    end

  end

end
