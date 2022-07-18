def filter_out_of_bounds array_of_moves
  valid_moves = []
  array_of_moves.each do |coordinate|
    x = coordinate[0]
    y = coordinate[1]
    if (x > 7 || x < 0) || (y > 7 || y < 0)
      next
    else 
      valid_moves.push(coordinate)
    end
  end
  valid_moves
end

def chess_line(to_remove=nil)
  full_array = [*0..7]
  full_array.delete to_remove 
  full_array
end

def y_equals_x_moves
  moves = []
  index = 0
  while index <= 7
    difference_between_x = @x - index
    y_value = @y - difference_between_x
    x_value_not_coordinate = (index != @x)
    if y_value >= 0 && x_value_not_coordinate
      moves.push([index, y_value])
    end
    index += 1
  end
  moves
end

def y_equals_negative_x_moves
  moves = []
  range = @x + @y
  x_coordinates = chess_line(@x)
  x_coordinates.each do |num|
    y_coordinate = range - num
    y_in_range =y_coordinate >= 0 && y_coordinate <= 7
    if y_in_range
      moves.push([num, y_coordinate])
    end
  end
  moves
end
