
class Tower

  attr_accessor :towers

  def initialize
    @towers = [[1,2,3],[],[]]
  end

  def play
    until won?
      p towers
      move(*input)
    end
    puts "You won!~!"
  end

  def move(from, to)
     if !towers[to].empty? && !towers[from].empty? && towers[to].first < towers[from].first
       raise "lol no"
     end
    return if towers[from].empty?
    disc = towers[from].shift
    towers[to].unshift(disc)
  end

  def won?
    if towers[2] == [1, 2, 3]
      return true
    else
      false
    end
  end

  def input
    puts "Give the array number you want to move from :"
    print ">> "
    from = $stdin.gets.chomp.to_i

    puts "Give the array number you want to move to :"
    print ">> "
    to = $stdin.gets.chomp.to_i

    [from, to]
  end
end


tower = Tower.new
tower.play
