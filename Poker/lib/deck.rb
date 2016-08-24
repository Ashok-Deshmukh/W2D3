require 'card'

class Deck

  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def deal_card
    raise "The deck is empty!" if cards.empty?
    cards.shift
  end
end
