def my_uniq(arr)
  arr.uniq
end

class Array
  def two_sum
    res = []
    (0..self.length - 2).each do |i|
      ((i + 1)..(self.length - 1)).each do |j|
        res << [i, j] if self[i] + self[j] == 0
      end
    end
    res
  end
end