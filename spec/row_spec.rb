require 'row'
require 'board'

RSpec.describe Row do
  subject { described_class.new(state.first, 0, board) }
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
      expect(subject.row).to eq [0, 1, 0]
    end
  end

  describe '#index' do
    it 'returns the index of the row on the board' do
      expect(subject.index).to eq 0
    end
  end

  describe '#board' do
    it 'returns the board instance it was initialized with' do
      expect(subject.board).to eq board
    end
  end

  describe '#previous' do
    it 'returns the previous row on the board' do
      expect(subject.previous).to eq nil
    end
  end

  describe '#next' do
    it 'returns the next row on the board' do
      expect(subject.next).to eq [0, 0, 1]
    end
  end

  describe '#evolved_cells' do
    it 'returns the evoloved cells in the row' do
      expect(subject.evolved_cells).to eq [0, 0, 0]
    end
  end
end
