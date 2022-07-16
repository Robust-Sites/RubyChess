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
      *y_equals_x_moves,
      #*y_equals_negative_x_moves
    ]
    moves
  end

  def y_equals_x_moves
    moves = []
    x_coordinates = chess_line(@x)
    y_coordinates = chess_line(@y)
    x_coordinates.each_with_index do |num, idx|
      moves.push([num, y_coordinates[idx]])
    end
    moves
  end

  def y_equals_negative_x_moves
    moves = []
    range = @x + @y
    x_coordinates = chess_line(@x)
    x_coordinates.each do |num|
      y_coordinate = range - num
      y_in_range =y_coordinate >= 0 && y_coordinate <= 7
      if y_in_range
        moves.push([num, y_coordinate])
      end
    end
    moves
  end
end

bishop = Bishop.new([7,3], "black")
p bishop.possible_moves