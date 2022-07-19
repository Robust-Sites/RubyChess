require_relative 'turn'

class TurnList #This is a double linked list.
  attr_accessor :head, :tail, :length

  def initialize()
    @head = nil
    @tail = nil
    @length = 0
  end

  def push(piece, move_from, move_to, captured_piece=nil)
end

turnlist = TurnList.new
turnlist.push("black", "A4", "B4")
p turnlist