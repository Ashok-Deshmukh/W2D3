require 'rspec'
require 'card'

describe Card do

  let (:card) {Card.new(2, "hearts")}

  describe "#suit" do
    it "returns the suit of the card" do
      expect(card.suit).to eq("hearts")
    end
  end

  describe "#value" do
    it "returns the value of the card" do
      expect(card.value).to eq(2)
    end
  end

  describe "#make_deck" do
    it "makes a deck with 52 items" do
      expect(card.make_deck.size).to eq(52)
    end

    it "has the cards' values, in order" do
      #allow(card).to receive(:value)
      expect(card.make_deck[0].value).to eq("A")
      expect(card.make_deck[1].value).to eq("2")
      expect(card.make_deck[2].value).to eq("3")
      expect(card.make_deck[3].value).to eq("4")
      expect(card.make_deck[4].value).to eq("5")
      expect(card.make_deck[5].value).to eq("6")
      expect(card.make_deck[6].value).to eq("7")
      expect(card.make_deck[7].value).to eq("8")
      expect(card.make_deck[26].value).to eq("A")

      # expect(deck.make_deck[3].suit).to eq(card.suit)
    end
    it "has the cards' suits in order of spades, hearts, clubs, diamonds" do
      #allow(card).to receive(:value)
      expect(card.make_deck[0].suit).to eq("spades")
      expect(card.make_deck[13].suit).to eq("hearts")
      expect(card.make_deck[26].suit).to eq("clubs")
      expect(card.make_deck[39].suit).to eq("diamonds")
      # expect(deck.make_deck[3].suit).to eq(card.suit)
    end
  end

end
