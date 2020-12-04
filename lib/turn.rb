require './lib/card'
require './lib/deck'
require './lib/player'

class Turn
  attr_reader :player1, :player2, :spoils_of_war

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = []
  end

  def spoils_of_war
    @spoils_of_war
  end

  def type
    if player1.deck.rank_of_card_at(0) == player2.deck.rank_of_card_at(0) && player1.deck.rank_of_card_at(2) == player2.deck.rank_of_card_at(2)
      :mutually_assured_destruction
    elsif
      player1.deck.rank_of_card_at(0) == player2.deck.rank_of_card_at(0)
      :war
    else
      player1.deck.rank_of_card_at(0) != player2.deck.rank_of_card_at(0)
      :basic
    end
  end


  def winner
    return @player1 if type == :basic && player1.deck.rank_of_card_at(0) > player2.deck.rank_of_card_at(0)
    return @player2 if type == :basic && player2.deck.rank_of_card_at(0) > player1.deck.rank_of_card_at(0)
    return @player1 if type == :war && player1.deck.rank_of_card_at(2) > player2.deck.rank_of_card_at(2)
    return @player2 if type == :war && player2.deck.rank_of_card_at(2) > player1.deck.rank_of_card_at(2)
    return "No Winner" if type == :mutually_assured_destruction
  end


  def pile_cards
    if type == :basic
      @spoils_of_war << player1.deck.remove_card
      @spoils_of_war << player2.deck.remove_card

    elsif type == :war
      3.times do
        @spoils_of_war << player1.deck.remove_card
        @spoils_of_war << player2.deck.remove_card
      end

    else
      3.times do
        player1.deck.remove_card
        player2.deck.remove_card
      end
    end
  end

  def award_spoils(winner)
     @spoils_of_war.map do |card|
       winner.deck.add_card(card)
     end

  end

end


# card1 = Card.new(:heart, 'Jack', 11)
# card2 = Card.new(:heart, '10', 10)
# card3 = Card.new(:heart, '9', 9)
# card4 = Card.new(:diamond, 'Jack', 11)
# card5 = Card.new(:heart, '8', 8)
# card6 = Card.new(:diamond, 'Queen', 12)
# card7 = Card.new(:heart, '3', 3)
# card8 = Card.new(:diamond, '2', 2)
# deck1 = Deck.new([card1, card2, card5, card8])
# deck2 = Deck.new([card4, card3, card6, card7])
# player1 = Player.new('Megan', deck1)
# player2 = Player.new('Aurora', deck2)
# turn = Turn.new(player1, player2)
# winner = turn.winner
# require'pry';binding.pry
