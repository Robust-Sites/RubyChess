require_relative 'turn'
require_relative 'turn_node'

class TurnList #This is a double linked list.
  attr_accessor :head, :tail, :length

  def initialize()
    @head = nil
    @tail = nil
    @length = 0
  end

  def push(turn)
    new_node = TurnNode.new(turn)
  end

end

turnlist = TurnList.new
turn = Turn.new("bishop", "A4", "B4")
turnlist.push(turn)
p turnlist