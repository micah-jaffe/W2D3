require_relative 'deck'
require_relative 'player'

class Game
  attr_reader :deck, :current_player, :pot
  
  def initialize(players)
    @deck = Deck.new
    @current_player = players.first
    @pot = 0
  end
end