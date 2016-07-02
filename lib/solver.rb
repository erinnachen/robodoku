require_relative './board'
class Solver
  attr_reader :board
  def initialize(puzzle)
    @board = Board.new(puzzle)
  end

  def solve
    board.to_s
  end
end
