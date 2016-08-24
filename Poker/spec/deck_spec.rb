require 'rspec'
require 'deck'


describe Deck do

  let (:deck) {Deck.new}
  let(:card) { double(:card, {value: "4", suit: "spades"}) }

  describe "#make_deck" do
    it "makes a deck with 52 items" do
      expect(deck.make_deck.size).to eq(52)
    end

    it "has the cards' values, in order" do
      #allow(card).to receive(:value)
      expect(deck.make_deck[3].value).to eq(card.value)
      # expect(deck.make_deck[3].suit).to eq(card.suit)
    end
    it "has the cards' suits in order of spades, hearts, clubs, diamonds" do
      #allow(card).to receive(:value)
      expect(deck.make_deck[0].suit).to eq("spades")
      expect(deck.make_deck[13].suit).to eq("hearts")
      expect(deck.make_deck[26].suit).to eq("clubs")
      expect(deck.make_deck[39].suit).to eq("diamonds")
      # expect(deck.make_deck[3].suit).to eq(card.suit)
    end


  end


end
