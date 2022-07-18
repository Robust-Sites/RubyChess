class Turn
  attr_accessor: :turn_number, :prev, :next
  def initialize(piece, move_from, move_to, captured_piece=False, captured_piece=nil) 
    @piece = piece
    @next = nil
    @prev = nil 
    @turn_number = 0
  end
end
