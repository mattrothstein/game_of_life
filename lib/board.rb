# frozen_string_literal: true

class Board
  attr_reader :state
  def initialize(state)
    @state = state
  end

  def evolved_state

  end

  def evolved_rows
    @evolved_rows ||= state.map.with_index do |row, index|
      Row.new(row, index, self)
    end
  end
end
