require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'



card1 = :heart, '2', 2
card2 = :heart, '3', 3
card3 = :heart, '4', 4
card4 = :heart, '5', 5
card5 = :heart, '6', 6
card6 = :heart, '7', 7
card7 = :heart, '8', 8
card8 = :heart, '9', 9
card9 = :heart, '10', 10
card10 = :heart, 'Jack', 11
card11 = :heart, 'Queen', 12
card12 = :heart, 'King', 13
card13 = :heart, 'Ace', 14
card14 = :club, '2', 2
card15 = :club, '3', 3
card16 = :club, '4', 4
card17 = :club, '5', 5
card18 = :club, '6', 6
card19 = :club, '7', 7
card20 = :club, '8', 8
card21 = :club, '9', 9
card22 = :club, '10', 10
card23 = :club, 'Jack', 11
card24 = :club, 'Queen', 12
card25 = :club, 'King', 13
card26 = :club, 'Ace', 14
card27 = :spade, '2', 2
card28 = :spade, '3', 3
card29 = :spade, '4', 4
card30 = :spade, '5', 5
card31 = :spade, '6', 6
card32 = :spade, '7', 7
card33 = :spade, '8', 8
card34 = :spade, '9', 9
card35 = :spade, '10', 10
card36 = :spade, 'Jack', 11
card37 = :spade, 'Queen', 12
card38 = :spade, 'King', 13
card39 = :spade, 'Ace', 14
card40 = :diamond, '2', 2
card41 = :diamond, '3', 3
card42 = :diamond, '4', 4
card43 = :diamond, '5', 5
card44 = :diamond, '6', 6
card45 = :diamond, '7', 7
card46 = :diamond, '8', 8
card47 = :diamond, '9', 9
card48 = :diamond, '10', 10
card49 = :diamond, 'Jack', 11
card50 = :diamond, 'Queen', 12
card51 = :diamond, 'King', 13
card52 = :diamond, 'Ace', 14

deck1 = [card2, card4, card6, card9, card10, card12, card15, card16, card19,
card20, card22, card24, card25, card27, card29, card30, card31, card33,
card35, card37, card39, card42, card45, card46, card49, card52].shuffle!

deck2 = [card2, card4, card6, card9, card10, card12, card15, card16, card19,
card20, card22, card24, card25, card27, card29, card30, card31, card33,
card35, card37, card39, card42, card45, card46, card49, card52].shuffle!

deck_1 = Deck.new(deck1)
deck_2 = Deck.new(deck2)

player1 = Player.new('Andrew', deck_1)
player2 = Player.new('Janis', deck_2)


class StartGame
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start
    "Welcome to War! (or Peace) This game will be played with 52 cards."
    "The palyers today will be #{@player1} and #{@player2}."
    "Type 'GO' to start the game."

    answer = gets.chomp

    if
      answer = "GO" || "Go" || "go"
      puts "Now starting game..."
    end

  end


end
