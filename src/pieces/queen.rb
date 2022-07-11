require_relative 'piece'
require_relative 'piece_helpers'

class Queen < Piece
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

  def diagonal_moves
    moves = []
    diagonal_coordinates = chess_line(@x)
    diagonal_coordinates.each do |num|
      moves.push([num, num])
    end
    moves
  end
end