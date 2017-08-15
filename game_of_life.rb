#this class is the main class that represent the game
class GameOfLife

  def initialize(size)
    @size = size
    @board = Board.new(size)
  end

  def start_game
  end

  def next_step
    board.iterate_cells
  end
end
