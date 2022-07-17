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
      *y_equals_negative_x_moves
    ]
    moves
  end

  def y_equals_x_moves
    moves = []
    index = 0
    while index <= 7
      difference_between_x = @x - index
      y_value = @y - difference_between_x
      x_value_not_coordinate = (index != @x)
      if y_value >= 0 && x_value_not_coordinate
        moves.push([index, y_value])
      end
      index += 1
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