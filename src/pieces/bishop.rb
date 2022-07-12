require_relative 'piece'
require_relative 'piece_helpers'

class Bishop < Piece
  attr_accessor :coordinate, :color
  def initialize(coordinate, color)
    super(coordinate, color)
    @x = coordinate[0]
    @y = coordinate[1]
  end

  def possible_moves
    moves = [
      *y_equals_x_moves
    ]
    moves
  end

  def y_equals_x_moves
    moves = []
    x_coordinates = chess_line(@x)
    y_coordinates = chess_line(@y)
    y_index = 0
    x_coordinates.each do |num|
      moves.push([num, y_coordinates[y_index]])
      y_index += 1
    end
    moves
  end

  def y_equals_negative_x_moves
    moves = []
    x_coordinates = chess_line(@x)
    y_coordinates = negative_chess_line(@y)
    y_index = 0
    x_coordinates.each do |num|
      moves.push([num, y_coordinates[y_index]])
      y_index += 1
    end
    moves
  end
end
bishop = Bishop.new([3,3], "black")
p bishop.possible_moves