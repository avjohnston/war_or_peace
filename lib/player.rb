require './lib/card'
require './lib/deck'

class Player
  attr_reader :player
              :deck
  def initialize(name, deck)
    @name = name
    @deck = deck
  end

  def has_lost?
    @deck.cards.count <= 0
  end

end
