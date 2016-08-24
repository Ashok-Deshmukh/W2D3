require 'rspec'
require 'tdd'

describe "Array#my_unique" do
  let(:test_array) { [1, 2, 1, 3, 3] }
  it 'returns an array' do
    expect(Array.new.my_unique).to be_instance_of(Array)
  end

  it "doesn't return original array" do
    expect(test_array.my_unique).to_not eq(test_array)
  end

  it "returns unique numbers of the original array" do
    expect(test_array.my_unique).to eq([1, 2, 3])
  end

end

describe "Array#two_sum" do
  let(:empty_array) { [] }
  let(:test_array) {[-1, 0, 2, -2, 1]}
  let(:order_array) {[0, -1, 1, -2, 1, 0]}
  it 'returns an array' do
    expect(Array.new.two_sum).to be_instance_of(Array)
  end
  it 'returns empty array if calling on empty array' do
    expect(empty_array.two_sum).to eq([])
  end
  it "returns pairs of indices that sum to zero" do
    expect(test_array.two_sum).to include([0, 4], [2, 3])
  end
  it "returns pairs of indices that sum to zero, in order" do
    expect(order_array.two_sum).to eq([[0, 5],[1, 2], [1, 4]])
  end

end


describe "#my_transpose" do
  let(:test_array) {[
                     [0, 1, 2],
                     [3, 4, 5],
                     [6, 7, 8]
                   ]}
  it 'returns an array' do
    expect(my_transpose(test_array)).to be_instance_of(Array)
  end

  it 'return an array of the same size' do
    expect(my_transpose(test_array).size).to eq(3)
  end

  it "generates the transpose" do
    expect(my_transpose(test_array)).to eq([[0, 3, 6],
                                            [1, 4, 7],
                                            [2, 5, 8]])
  end
end


describe "#stock_picker" do

  let (:early_late) {[5, 8, 0, 4, 6, 3, 7, 2, 9, 1, 10]}
  let (:decreasing) {[10, 7, 3, 2]}
  let (:increasing) {(1..10).to_a}

  it "returns nil if price's array is empty" do
    expect(stock_picker([])).to eq(nil)
  end

  it "returns first and last indices if prices increase monotonically" do
    expect(stock_picker(increasing)).to eq([0, increasing.length - 1])
  end

  it "returns smallest deficit days if prices decrease monotonically" do
    expect(stock_picker(decreasing)).to eq([2, 3])
  end

  it "returns the right days for non monotonic price array" do
    expect(stock_picker(early_late)).to eq([2, 10])
  end

end
