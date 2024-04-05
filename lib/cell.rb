class Cell
  attr_reader :state, :index, :row
  def initialize(state, index, row)
    @state = state
    @index = index
    @row   = row
  end

  def above
    row.previous
  end

  def below
    row.next
  end

  def neighbors

    # @neighbors ||=
  end

  def evolve

  end
end
