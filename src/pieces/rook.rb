require_relative 'piece'
require_relative 'piece_helpers'

class Rook < Piece
  attr_accessor :coordinate, :color

  def initialize(coordinate, color)
    super(coordinate, color)
    @x = coordinate[0]
    @y = coordinate[1]
  end
  
end