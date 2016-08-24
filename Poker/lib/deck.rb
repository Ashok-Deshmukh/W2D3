require 'card'

class Deck
  SUITS = ["spades", "hearts", "clubs", "diamonds"]
  VALUES = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  def initialize
  end

  def make_deck
    deck = []
    SUITS.each do |suit|
      VALUES.each do |value|
        deck << Card.new(value, suit)
      end
    end
    deck
  end





end
