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
    if player1.rank_of_card_at(0) ==
      player2.rank_of_card(0) &&
      player1.rank_of_card_at(2) &&
      player2.rank_of_card(2)
      :mutually_assured_destruction
    elsif
      player1.rank_of_card_at(0) ==
      player2.rank_of_card_at(0)
      :war
    else
      player1.rank_of_card_at(0) !=
      player2.rank_of_card_at(0)
      :basic
    end
  end

  def winner


end
