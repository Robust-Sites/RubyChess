require_relative 'piece'
require_relative 'piece_helpers'

class Knight < Piece
  attr_accessor :coordinate, :color

  def initialize(coordinate, color)
    super(coordinate, color)
      @x = coordinate[0]
      @y = coordinate[1]
  end

  def possible_moves
    moves = []
    moves
  end
    
  def return_moves
    moves = []
    #check confines of start values
    x_start = @x - 3 
    while x_start < 0
      x_start += 1
    end
    y_start = @y - 3 
    while y_start < 0
      y_start += 1
    end

    #check confines of end values
    x_final = @x + 3
    while x_final > 7
      x_final -= 1
    end
    y_final = @y + 3
    while y_final > 7
      y_final -= 1
    end

    #actual logic
    while x_start < x_final
      while y_start < y_final
        change_in_x = x_start - @x
        change_in_y = y_start - @y
        absolute_value_x = change_in_x.abs()
        absolute_value_y = change_in_y.abs()
        moved_three_spaces = (change_in_x).abs() + (change_in_y).abs()
        if (moved_three_spaces)
          moves.push([x_start, y_start])
        end
        y_start += 1
      end
      x_start += 1
    end
  end
end
knight = Knight.new([0,0], 'black')
p knight.possible_moves()