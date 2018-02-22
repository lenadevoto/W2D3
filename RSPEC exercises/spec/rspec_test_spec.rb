require 'rspec_test'
require 'rspec'

describe '#Array' do

  describe "#my_uniq" do
    it "removes duplicates from an array" do
      expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])

    end
  end

  describe '#two_sum' do
    it "finds all pairs of positions where the elements sum to zero " do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end

    it "pairs are sorted smaller index before bigger index" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([-1, 0, 2, -2, 1].two_sum.sort)
    end
  end

  describe '#my_transpose' do
    it "will convert between row-oriented and column-oriented represenatations" do
      expect([[0, 1, 2], [3, 4, 5], [6, 7, 8]].my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
  end

  describe '#stock_picker' do
    it "takes in an array of stock prices that outputs the most profitable pair to buy and sale" do
      expect([1000,100,500,350].stock_picker).to eq([1,2])
    end
  end
end


describe '#TowersOfHanoi' do
  subject(:game) { TowersOfHanoi.new }

  describe '#initialize' do
    it 'initializes the correct starting position' do
      expect(game.towers).to eq([[3, 2, 1], [], []])
    end
  end

  describe '#move' do

    it 'moves a disk from the start tower to the end tower' do
      game.move(0, 1)
      expect(game.towers).to match_array([[3, 2], [1], []])
    end

    it 'raise error if we try to move from an empty tower' do
      expect { game.move(2, 1) }.to raise_error("game error")
    end

    it 'raise error if we try to move a bigger disk on a small disk' do
      game.move(0, 1)
      expect { game.move(0, 1) }.to raise_error("game error")
    end

  end

  describe '#won?' do
    let(:winning_game) { TowersOfHanoi.new([[], [], [3, 2, 1]]) }
    it 'returns true for a winning board state' do
      expect(winning_game).to be_won
    end
  end

end
