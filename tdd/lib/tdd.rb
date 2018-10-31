def my_uniq(arr)
  arr.uniq
end

def my_transpose(array)
  raise ArgumentError if array.any? {|el| el.length != array.length}
  array.transpose
end

def stock_picker(arr)
  raise "Array should be at least 2 elements" unless arr.length >= 2
  max_profit = 0
  buy_sell_days = nil
  
  (0..arr.length - 2).each do |i|
    ((i + 1)..(arr.length - 1)).each do |j|
      if arr[j] - arr[i] > max_profit
        buy_sell_days = [i, j] 
        max_profit = arr[j] - arr[i]
      end
    end
  end
  
  buy_sell_days
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