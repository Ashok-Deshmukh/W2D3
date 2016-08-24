require 'rspec'
require 'towersofhanoi'

describe Tower do
  let (:game) {Tower.new}

  describe "#towers" do
    it "is an array of three arrays" do
      expect(game.towers.size).to eq(3)
    end

    it "has three elements in the first array" do
      expect(game.towers.first.size).to eq(3)
    end

    it "starts with a sorted first array" do
      expect(game.towers.first).to eq([1,2,3])
    end


  end

  describe "#move" do
    it "moves a disc, from one array to another array" do
      game.move(0,1)
      expect(game.towers.first).to eq([2,3])
      expect(game.towers[1]).to eq([1])
    end

    it "doesn't allow the starting position to be empty" do
      game.move(1,0)
      expect(game.towers.first).to eq([1,2,3])
      expect(game.towers[1]).to be_empty
    end

    it "doesn't do illegal big on top of small move" do
      game.move(0,1)
      expect(game.towers.first).to eq([2,3])
      expect{game.move(0,1)}.to raise_error("lol no")
    end
  end

  describe "#won?" do
    it "returns true when the third array is [1,2,3]" do
       game.towers[2] = [1,2,3]
      expect(game.won?).to eq(true)
    end

    it "Can win the game" do
      game.move(0,2)
      game.move(0,1)
      game.move(2,1)
      game.move(0,2)
      game.move(1,0)
      game.move(1,2)
      game.move(0,2)
      expect(game.won?).to eq(true)
    end

    it "says you haven't won yet if you haven't won yet" do
      game.move(0,2)
      game.move(0,1)
      game.move(2,1)
      expect(game.won?).to eq(false)
    end

  end



end







# describe "#move" do
#   it "moves a disc" do
#     move(0,1)
#     e
#   end
# end
#
#
# describe "#won?" do
#
# end
