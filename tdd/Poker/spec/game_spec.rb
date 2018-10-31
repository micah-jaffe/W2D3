require 'rspec'
require 'game'

RSpec.describe do
  describe Game do
    let(:players) { [Player.new, Player.new, Player.new]}
    subject(:game) { Game.new(players) }
    
    describe '#initialize' do
      it 'receives a deck object' do
        expect(game.deck).to be_a(Deck)
      end
      
      it 'sets current player' do
        expect(game.current_player).to be_a(Player)
      end
      
      it 'sets initial amount in pot' do
        expect(game.pot).to be_a(Integer)
      end
    end
  end
end