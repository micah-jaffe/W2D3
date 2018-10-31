require 'rspec'
require 'deck'

RSpec.describe do 
  describe Deck do
    subject(:deck) { Deck.new }
    describe "#initialize" do
      it "creates a standard 52 card deck" do
        expect(deck.cards.length).to eq(52)
        expect(deck.cards.all? {|card| card.is_a?(Card)}).to be true
      end
    end
    
    describe "::populate" do
      
    end
    
    describe "#shuffle" do
      
    end
    
    describe "#deal" do 
      
    end
    
  end
end