class Row
  attr_reader :row, :index, :board
  def initialize(row, index, board)
    @row   = row
    @index = index
    @board = board
  end

  def previous
    return nil if index == 0

    @previous ||= board.state[index - 1]
  end

  def next
    @next ||= board.state[index + 1]
  end

  def evolved_cells
    @evolved_cells ||= row.map.with_index do |cell, cell_index|
      Cell.new(cell, cell_index, row).evolve
    end
  end
end
