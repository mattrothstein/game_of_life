require 'board'

RSpec.describe Board do
  subject { described_class.new(state) }

  context 'first' do
    let(:state) do
      [
        [0,1,0],
        [0,0,1],
        [1,1,1],
        [0,0,0]
      ]
    end

    let(:evolved_state) do
      [
        [0,0,0],
        [1,0,1],
        [0,1,1],
        [0,1,0]
      ]
    end

    describe '#state' do
      it 'returns the state it was initialized with' do
        expect(subject.state).to eq state
      end
    end

    describe '#evolved_state' do
      it 'returns a new state' do
        expect(subject.evolved_state).to eq evolved_state
      end
    end
  end

  context 'second' do
    let(:state) do
      [[1,1],[1,0]]
    end

    let(:evolved_state) do
      [[1,1],[1,1]]
    end

    describe '#state' do
      it 'returns the state it was initialized with' do
        expect(subject.state).to eq state
      end
    end

    describe '#evolved_state' do
      it 'returns a new state' do
        expect(subject.evolved_state).to eq evolved_state
      end
    end
  end
end
