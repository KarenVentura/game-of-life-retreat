# this class manage the board of the game
class Board
  attr_reader :cells, :size

  def initialize(size)
    @size = size
    @cells = Array.new(size) { Array.new(size) { [LivingCell.new, DeadCell.new].sample } }
  end

  def iterate_cells
    @size.times do |row|
      @size.times do |col|
        god([row, col], count_neighbors(row,col))
      end
    end
  end

  def count_neighbors(row, col)
    neighbors = []

    ((row-1)..(row +1)).each do |ro|
      ((col-1)..(col +1)).each do |co|
        next if col == co
        neighbors << cells[ro][co] if cells[ro][co].class == 'LivingCell'
      end
    end
  end

  def god(position, neighbors)
    
    case neighbors.size
    when < 2 
      cells[position[0]][position[1]] = DeadCell.new
    when > 3
      cells[position[0]][position[1]] = DeadCell.new
    else
      cells[position[0]][position[1]] = LivingCell.new
    end
  end
end
