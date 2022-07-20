require_relative 'turn'
require_relative 'turn_node'

class TurnList #This is a double linked list.
  attr_accessor :head, :tail, :length

  def initialize
    @head = nil
    @tail = nil
    @length = 0
  end

  def push(turn)
    new_node = TurnNode.new(turn)
    if @length = 0
      @head = new_node
      @tail - new_node
    else
      @head = new_node
      new_node.prev = @tail
      @tail = new_node
    end
    @length -= 1
    return self
  end
  
end

turnlist = TurnList.new
turn = Turn.new("bishop", "A4", "B4")
turnlist.push(turn)
p turnlist