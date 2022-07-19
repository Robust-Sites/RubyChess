require_relative 'turn'

class TurnList
  attr_accessor :next, :prev, :move_number

  def initialize()
    @next = nil
    @prev = nil
    @move_number = 0
  end

  def push(piece, move_from, move_to, captured_piece=nil)
    if captured_piece != nil
      new_turn = Turn.new(piece, move_from, move_to, captured_piece)
    else
      new_turn = Turn.new(piece, move_from, move_to)
    end
  end
end

turnlist = TurnList.new
turnlist.push("black", "A4", "B4")
p turnlist.captured_piece()