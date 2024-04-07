require 'cell'

class Row
  attr_reader :row, :index, :board
  def initialize(row, index, board)
    @row   = row
    @index = index
    @board = board
  end

  def previous
    return nil if index == 0

    @previous ||= Row.new(board.state[index - 1], index - 1, board)
  end

  def next
    @next ||= Row.new(board.state[index + 1], index + 1, board)
  end

  def cell_at(cell_index)
    return if cell_index < 0 || row.nil?

    row[cell_index]
  end

  def evolved_cells
    @evolved_cells ||= row.map.with_index do |cell, cell_index|
      Cell.new(cell, cell_index, self).evolve
    end
  end
end
