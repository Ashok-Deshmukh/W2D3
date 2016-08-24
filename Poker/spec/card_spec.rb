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





end
