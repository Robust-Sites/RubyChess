require_relative '../piece'

class Pawn < Piece
  def initialize(coordinate, color)
    super(coordinate, color)
  end
end

this = Pawn.new(20, "blue")
this.info
