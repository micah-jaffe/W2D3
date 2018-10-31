class TowersOfHanoi
  attr_reader :board
  def initialize(stack_length = 3)
    # @board = Array.new(3) {Array.new}
    @board = [ (1..stack_length).to_a.reverse ,[],[]]
  end
end