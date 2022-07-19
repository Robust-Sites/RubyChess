class Turn
  attr_accessor :piece, :move_from, :move_to, :captured_piece, :next, :prev
  def initialize(piece, move_from, move_to, captured_piece=nil) 
    @piece = piece
    @move_from = move_from
    @move_to = move_to
    @captured_piece = captured_piece
    @next = nil
    @prev = nil 
  end
end
