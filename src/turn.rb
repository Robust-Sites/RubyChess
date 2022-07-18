class Turn
  attr_accessor: :turn_number, :prev, :next
  def initialize(piece, move_from, move_to, captured_piece=nil) 
    @piece = piece
    @move_from = move_from
    @move_to = move_to
    @captured_piece = captured_piece
    @next = nil
    @prev = nil 
  end
end

