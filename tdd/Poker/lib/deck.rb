require_relative 'card'

class Deck
  SUITES = %w(H S C D).freeze
  VALUES = %w(A 2 3 4 5 6 7 8 9 10 J Q K).freeze
  attr_reader :cards
  
  def self.populate_standard_deck
    res = []
    SUITES.each do |suite|
      VALUES.each do |value|
        res << Card.new(suite, value)
      end
    end
    res
  end
  
  def initialize
    @cards = self.class.populate_standard_deck
  end
  
  def shuffle
    @cards.shuffle
  end
  
  def deal(player)
    # raise ArgumentError unless player.is_a?(Player)
    if player.cards.length == 0 
      5.times { player.cards << @cards.pop }
      return 5
    else
      3.times { player.cards << @cards.pop }
      return 3
    end
  end
  
end