class Array

  def my_unique
    uniques = []
    each {|el| uniques << el unless uniques.include?(el)}
    uniques
  end

  def two_sum
    pairs = []
    (0...length-1).each do |i|
      (i+1...length).each do |j|
        pairs << [i,j] if self[i] + self[j] == 0
      end
    end
    pairs
  end

end


def my_transpose(array)
  transposed = []
  array.length.times do |i|
    holder_array = []
    array.each do |array|
      holder_array << array[i]
    end
    transposed << holder_array
  end
  transposed
end


def stock_picker(price_array)

  return nil if price_array.empty?
  total_max = nil
  days_array_total = []
  (0...price_array.length-1).each do |i|
    current_max = nil
    days_array = []
    (i+1...price_array.length).each do |j|
      difference = price_array[j] - price_array[i]
      if current_max.nil? || difference > current_max
         current_max = difference
         days_array = [i,j]
      end
    end
    if total_max.nil? || current_max > total_max 
       total_max = current_max
       days_array_total = days_array
    end
  end

  days_array_total

end
