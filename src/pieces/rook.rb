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
    moves = []
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
  
end