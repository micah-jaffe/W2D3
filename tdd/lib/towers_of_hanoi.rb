class TowersOfHanoi
  attr_reader :board
  def initialize(stack_length = 3)
    @board = [(1..stack_length).to_a.reverse ,[],[]]
    @stack_length = stack_length
  end
  
  def move(start, last)
    raise "Empty peg" if board[start].empty?
    raise "Invalid move" if board[start].last > (board[last].last || Float::INFINITY)
    board[last] << board[start].pop
  end
  
  def won?
    @board.last.count == @stack_length
  end
  
  private
  attr_writer :board
  
end