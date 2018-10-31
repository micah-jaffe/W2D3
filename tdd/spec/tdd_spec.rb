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
      
      it "returns nil if no pairs are found" do
        
      end
    end
    
  end
end