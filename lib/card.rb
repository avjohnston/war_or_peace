class Card
  attr_accessor :suit, :value, :rank

  def initialize(suit, value, rank)
    @suit = suit
    @value = value
    @rank = rank
  end

  def print_card
    return "#{@rank} of #{@suit.capitalize}s"
  end

end
