require 'rspec'
require './game_of_life'
require 'pry'
require './board'
require './cell'
require './alive'
require './died'


RSpec.describe Board  do
  context 'Create Board' do
    game = GameOfLife.new(5)

    it 'should return a board' do
      expect(game.board.class).to eq Board
    end

    xit 'returns a cell from position' do
      expect(game.board.position_at(1,2)).to
    end
  end
end

RSpec.describe Cell  do
  context 'when cell is alive' do
    game = GameOfLife.new(5)
    state = game.board.position_at(1,2).class ? LivingCell : DeadCell

    it 'should return a cell depending of state' do
      expect(game.board.position_at(1,2).class).to eq state
    end
  end
end

RSpec.describe GameOfLife, 'game of life' do
  context 'Game' do
    describe 'when the cell is alive and your neighbor is alive' do
      it '#underpopulation' do
        game = GameOfLife.new(5)
        binding.pry
        expect(game.next_step)
      end
    end
  end

  context '#healthy' do
    describe 'when the cell is alive and has more than 3 neighbor alives it alives' do
      it 'alives' do
      end
    end
  end

  context 'overpopulation' do
    describe 'when the cell has more than 3 neighbor' do
      it 'dies' do

      end
    end
  end
end
