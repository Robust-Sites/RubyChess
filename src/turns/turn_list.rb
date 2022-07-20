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
    if @length == 0
      @head = new_node
      @tail = new_node
    else
      @tail.next = new_node
      new_node.prev = @tail
      @tail = new_node
    end
    @length += 1
    return self
  end
  
  def pop
    return nil if !@head
    old_tail = @tail
    if @length == 1
      @head = nil
      @tail = nil
    else
      @tail = old_tail.prev
      @tail.next = nil
      old_tail.prev = nil
    end
    @length -= 1
    return old_tail
  end
  
  rescue => exception
    
  else
    
  ensure
    
  end
  end

end

turnlist = TurnList.new
turn = Turn.new("bishop", "A4", "B4")
turnlist.push(turn)
p turnlist