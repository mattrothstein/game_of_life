# frozen_string_literal: true
require 'row'

class Board
  attr_reader :state
  def initialize(state)
    @state = state
  end

  def evolved_state
    state.each_with_index do |_row, index|
      state[index] = evolved_rows[index]
    end
  end

  def evolved_rows
    @evolved_rows ||= state.map.with_index do |row, index|
      Row.new(row, index, self).evolved_cells
    end
  end
end
