# require 'minitest/autorun'
# require 'minitest/pride'
require './lib/card'
require './lib/deck'

class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end
