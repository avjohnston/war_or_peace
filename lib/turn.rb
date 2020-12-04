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

  def type
    if player1.deck.rank_of_card_at(0) ==
      player2.deck.rank_of_card_at(0) &&
      player1.deck.rank_of_card_at(2) ==
      player2.deck.rank_of_card_at(2)
      :mutually_assured_destruction
    elsif
      player1.deck.rank_of_card_at(0) ==
      player2.deck.rank_of_card_at(0)
      :war
    else
      player1.deck.rank_of_card_at(0) !=
      player2.deck.rank_of_card_at(0)
      :basic
    end
  end


  def winner
    return player1.name if type == :basic && player1.deck.rank_of_card_at(0) > player2.deck.rank_of_card_at(0)
    return player2.name if type == :basic && player2.deck.rank_of_card_at(0) > player1.deck.rank_of_card_at(0)
    return player1.name if type == :war && player1.deck.rank_of_card_at(2) > player2.deck.rank_of_card_at(2)
    return player2.name if type == :war && player2.deck.rank_of_card_at(2) > player1.deck.rank_of_card_at(2)
    return "No Winner" if type == :mutually_assured_destruction
  end


  def pile_cards
    if type == :basic
      @spoils_of_war << player1.deck.remove_card
      @spoils_of_war << player2.deck.remove_card
      @spoils_of_war.flatten!

    elsif type == :war
      @spoils_of_war << 3.times.player1.deck.remove_card
      @spoils_of_war << 3.times.player2.deck.remove_card
      @spoils_of_war.flatten!

    else
      player1.deck.remove_card * 3
      player2.deck.remove_card * 3
    end
  end


  def award_spoils

  end


end
