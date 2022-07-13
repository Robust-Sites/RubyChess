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
    x_coordinates = chess_line(@x)
    y_coordinates = chess_line(@y)
    y_index = 0
    x_coordinates.each do |num|
      moves.push([num, y_coordinates[y_index]])
      y_index += 1
    end
    moves
  end
  #[[0,6][1,5],[2,4],[4,2],[5,1][6,0]] 3,3
  #[[1,7],[2,6],[3,5],[5,3],[6,2],[7,1]] 4,4
  def y_equals_negative_x_moves #For current test
    moves = []
    range = @x + @y
    x_coordinates = chess_line(@x)
    x_coordinates.each do |num|
      y_coordinate = range - num
      if y_coordinate >= 0
        moves.push([num, y_coordinate])
      end
    end
    moves
  end
end
bishop = Bishop.new([3,3], "black")
p bishop.possible_moves