require 'rspec'
require 'game'

RSpec.describe do
  describe Game do
    subject(:game) { Game.new }
    
    describe '#initialize' do
      it 'receives a deck object' do
        expect(game.deck).to be_a(Deck)
      end
      
      it 'keeps track of whose turn it is' do
        expect(game.turn).to be_a(Player)
      end
      
      it 'keeps track of the amount in the pot' do
        expect(game.pot).to be_a(Integer)
      end
    end
    
    
  end
end