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
      it "returns an array of 52 elements" do
        expect(Deck.populate_standard_deck.length).to eq(52)
      end
      
      it "each array element is an instance of Card class" do
        standard_deck = Deck.populate_standard_deck
        expect(standard_deck.all? {|card| card.is_a?(Card)}).to be true
      end
    end
    
    describe "#shuffle" do
      it "shuffles the cards" do
        expect(deck.shuffle).to_not eq(deck.cards)
      end
    end
    
    describe "#deal" do 
      context "initial deal" do
        let(:player) {double("player", cards: [])}
        it "gives 5 cards to each player when game starts" do
          allow(player).to receive(:receive_hand)
          deck.deal(player)
          expect(deck.cards.length).to eq(47)
        end
      end
      
      context "deal during game" do
        let(:player) {double("player", cards: [4, 8])}
        it "gives 3 cards to player after player discards" do
          allow(player).to receive(:receive_hand)
          deck.deal(player)
          expect(deck.cards.length).to eq(49)
        end  
      end
      
    end
    
  end
end