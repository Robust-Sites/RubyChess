require_relative 'turn'

class TurnList
  attr_accessor :next, :prev, :move_number

  def initialize()
    @next = nil
    @prev = nil
    @move_number = 0
  end