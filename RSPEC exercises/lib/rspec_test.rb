require 'byebug'
class Array

  def my_uniq
    uniqs = []
    self.each do |el|
      unless uniqs.include?(el)
        uniqs << el
      end
    end
    uniqs
  end

  def two_sum
    zero_sums = []
    self.each_index do |i|
      self.each_index do |j|
        next if j <= i
        zero_sums << [i, j] if self[i] + self[j] == 0
      end
    end

    zero_sums
  end

  def my_transpose
    self.transpose
  end

  def stock_picker
    cur_largest = [0,0]
    self.each_with_index do |num1, idx1|
      self.each_with_index do |num2, idx2|
        next if idx2 <= idx1
        if (num2 - num1) > self[cur_largest.last] - self[cur_largest.first]
          cur_largest = [idx1,idx2]
        end
      end
    end
    cur_largest
  end
end


class TowersOfHanoi

  attr_reader :towers

  def initialize(towers = [[3, 2, 1], [], []])
    @towers = towers
  end

  def move(from, to)

    raise 'game error' unless valid_move?(from, to)
    top_disk = @towers[from].pop
    @towers[to] << top_disk

  end

  def won?
    @towers[2].length == 3
  end

  def valid_move?(from, to)
    from_has_disks = @towers[from].length > 0
    to_is_empty = @towers[to].empty?

    from_disk_less_to_disk = (@towers[from].length > 0 && @towers[to].length > 0) && (@towers[from].last < @towers[to].last)

    from_has_disks && to_is_empty || from_disk_less_to_disk

  end

end
