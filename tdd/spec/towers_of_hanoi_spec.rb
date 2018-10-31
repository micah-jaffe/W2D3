require 'towers_of_hanoi'

RSpec.describe do 
  describe TowersOfHanoi do 
    subject(:game) { TowersOfHanoi.new }
    describe '#initialize' do
      
      it "creates a default board" do
        expect(game.board).to eq([[3,2,1], [], []])
      end  
      
      it "creates a custom board if passed an argument" do
        new_game = TowersOfHanoi.new(5)
        expect(new_game.board).to eq([[5,4,3,2,1], [], []])
      end
    end
    
    describe '#move' do
      it "moves a disk from one peg to another" do
        game.move(0, 1)
        expect(game.board).to eq([[3,2], [1], []])
      end
      
      it "does not move a larger disk onto a smaller disk" do
        game.move(0, 1)
        expect { game.move(0, 1) }.to raise_error("Invalid move")
      end
      
      it "does not allow you select an empty peg as start" do
        expect { game.move(1, 0) }.to raise_error("Empty peg")
      end
    end
    
    describe '#won?' do
    end
  end
end