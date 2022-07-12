require_relative 'piece'
require_relative 'piece_helpers'

class Rook < Piece
  attr_accessor :coordinate, :color

  def initialize(coordinate, color)
    super(coordinate, color)
    @x = coordinate[0]
    @y = coordinate[1]
  end

  def possible_moves
    moves = [
      *vertical_moves,
      *horizontal_moves
    ]
    moves
  end

  def vertical_moves
    moves = []
    y_coordinates = chess_line(@y)
    y_coordinates.each do |num|
      moves.push([@x, num])
    end
    moves
  end

  def horizontal_moves
    moves = []
    x_coordinates = chess_line(@x)
    x_coordinates.each do |num|
      moves.push([num, @y])
    end
    moves
  end
end