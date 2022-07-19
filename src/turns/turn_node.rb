class TurnNode
  attr_accessor :turn, :next, :prev
  
  def initialize(turn)
    @turn = turn
    @next = nil
    @prev = nil
  end
end