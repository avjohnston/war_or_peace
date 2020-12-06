class Card
  attr_accessor :suit, :value, :rank

  def initialize(suit, value, rank)
    @suit = suit
    @value = value
    @rank = rank
  end

  def print_card(index)
    puts "#{@rank} of #{@suit}s"
  end

end
