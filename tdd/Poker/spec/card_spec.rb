require 'rspec'
require 'card'

RSpec.describe do 
  describe Card do
    subject(:card) { Card.new("5", "H")}
    describe "#initialize" do
      it "accepts a value" do
        expect(card.value).to eq("5")
      end
      
      it "accepts a suite" do
        expect(card.suite).to eq("H")
      end
    end
  end
end 
