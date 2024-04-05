require 'cell'
require 'row'

RSpec.describe Cell do
  subject     { described_class.new(0, 0, row) }

  let(:row)   { Row.new(board.state, 0 board) }
  let(:board) { Board.new(state) }

  let(:state) do
    [
      [0,1,0],
      [0,0,1],
      [1,1,1],
      [0,0,0]
    ]
  end

  describe '#row' do
    it 'returns the row it was initialized with' do
      expect(subject.row).to eq row
    end
  end

  describe '#index' do
    it 'returns the index of the cell in the row' do
      expect(subject.index).to eq 0
    end
  end

  describe '#state' do
    it 'returns the state of the cell when it was initialized' do
      expect(subject.state).to eq 0
    end
  end

  describe '#neighbors' do
    it 'returns the states of its neighboring cells' do
      expect(subject.neighbors).to eq [1, 0, 0]
    end
  end

  describe '#evolve' do
    it 'returns evolved_value of the cell' do
      expect(subject.next).to eq 1
    end
  end
end
