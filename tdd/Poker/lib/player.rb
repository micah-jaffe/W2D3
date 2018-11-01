class Player
  attr_reader :cards, :name
  
  def initialize(name)
    @name = name
    @cards = []
  end
  
  def receive_hand(hand)
    @cards.concat(hand)
  end
  
end