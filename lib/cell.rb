class Cell
  attr_reader :state, :index, :row
  def initialize(state, index, row)
    @state = state
    @index = index
    @row   = row
  end

  def neighbors
    @neighbors ||= [
      top&.cell_at(left),
      top&.cell_at(center),
      top&.cell_at(right),
      row.cell_at(left),
      row.cell_at(right),
      bottom&.cell_at(left),
      bottom&.cell_at(center),
      bottom&.cell_at(right)
    ].compact
  end

  def live_neighbors
    @live_neighbors ||= neighbors.count(1)
  end

  def evolve
    return 1 if alive? and [2, 3].include?(live_neighbors)
    return 1 if dead? and live_neighbors == 3

    0
  end

  private

  def dead?
    !alive?
  end

  def alive?
    state == 1
  end

  def center
    index
  end

  def left
    index - 1
  end

  def right
    index + 1
  end

  def top
    row.previous
  end

  def bottom
    row.next
  end
end
