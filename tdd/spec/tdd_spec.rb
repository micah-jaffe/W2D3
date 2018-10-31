require 'tdd'

RSpec.describe do 
  describe '#my_uniq' do
    it "gets unique elements of an array" do
      arr = [1,2,1,3,3]
      expect(my_uniq(arr)).to match_array([1,2,3])  
    end
  
    it "does not change array that is already unique" do
      arr = [1,2,3]
      expect(my_uniq(arr)).to eq(arr)
    end
  end
  
  describe '#my_transpose' do 
    it "returns the transposed array" do
      arr = [
          [0, 1, 2],
          [3, 4, 5],
          [6, 7, 8]
        ]
      
      res = [
          [0, 3, 6],
          [1, 4, 7],
          [2, 5, 8]
        ]
      expect(my_transpose(arr)).to match_array(res)
    end
    
    it "returns empty array if passed empty array" do
      expect(my_transpose([])).to eq([])
    end
    
    it "raises ArgumentError if not passed nxn array" do
      arr = [
        [5,3,2],
        [1,2]
      ]
      expect {my_transpose(arr)}.to raise_error(ArgumentError)
    end
  end
  
  describe "#stock_picker" do 
    subject(:stocks) { [10, 5, 2, 29, 31]}   #res_arr = [2,4]
    
    it "returns the most profitable pair" do
        expect(stock_picker(stocks)).to eq([2,4])
    end
    
    it "returns array indices in ascending order" do
      days = stock_picker(stocks)
      expect(days).to eq(days.sort)
    end
    
    it "returns the first pair in the case of a tie" do
      arr = [1, 3, 1, 3]
      expect(stock_picker(arr)).to eq([0, 1])
    end
    
    it "raises an error if argument length less than two days" do
      arr = [5]
      expect { stock_picker(arr) }.to raise_error("Array should be at least 2 elements")
    end
  end
  
  describe Array do 
    describe '#two_sum' do
      subject(:arr) { [-1,0,2,-2,1] }
      it "returns nested array" do
        expect(arr.two_sum.all? {|el| el.is_a?(Array)}).to be_truthy
      end
      
      it "contains pairs of positions whose elements sum to 0" do
        expect(arr.two_sum).to eq([[0, 4], [2, 3]])
      end
      
      it "returns the element in ascending order" do
        result_array = arr.two_sum
        truth = result_array.all? { |array| array[0] < array[1] }
        expect(truth).to be_truthy
      end
      
      it "returns empty array if no pairs are found" do
        new_array = [1, 2, 3, 4]
        expect(new_array.two_sum).to be_empty
      end
    end
    
  end
end