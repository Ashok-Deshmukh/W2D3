require 'rspec'
require 'deck'


describe Deck do

  let (:card) {double(:card, value: "A", suit: "spades")}



  describe "#deal_card" do
    let (:one_card_deck) { Deck.new([card])}

    it "deals a card" do
      expect(one_card_deck.deal_card).to eq(card)
    end
    it "should not deal more cards than are in the deck" do

      expect(one_card_deck.deal_card).to eq(card)
      expect{one_card_deck.deal_card}.to raise_error("The deck is empty!")

    end

  end



end
