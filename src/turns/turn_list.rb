require_relative 'turn'

class TurnList #This is a double linked list.
  attr_accessor :next, :prev, :move_number

  def initialize()
    @next = nil
    @prev = nil
    @move_number = 0
  end

  def push(piece, move_from, move_to, captured_piece=nil)
   
end

turnlist = TurnList.new
turnlist.push("black", "A4", "B4")
p turnlist