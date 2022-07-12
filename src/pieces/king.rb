require_relative 'piece'
require_relative 'piece_helpers.rb'

class King < Piece
  attr_accessor :coordinate, :color

  def initialize(coordinate, color)
    super(coordinate, color)
    @x = coordinate[0]
    @y = coordinate[1]
  end

  def possible_moves
    moves = [
      *vertical_moves,
      *horizontal_moves,
      *diagonal_moves
    ]
    filter_out_of_bounds moves
  end

  def vertical_moves
    moves = [[@x, @y + 1], [@x, @y - 1]]
    moves
  end

  def horizontal_moves
    moves = [[@x + 1, @y], [@x - 1, @y]]
    moves
  end

  def diagonal_moves
    moves = [
      [@x + 1, @y + 1],
      [@x + 1, @y - 1],
      [@x - 1, @y + 1],
      [@x - 1, @y - 1]
    ]
    moves
  end
end
