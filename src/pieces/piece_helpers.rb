def filter_out_of_bounds array_of_moves
  valid_moves = []
  array_of_moves.each do |coordinate|
    x, y = coordinate[0], coordinate[1]
    if (x > 7 || x < 0) || (y > 7 || y < 0)
      next
    else 
      valid_moves.push(coordinate)
    end
  end
end

def chess_line(to_remove=nil)
  full_array = [*0..7]
  full_array.delete to_remove 
  full_array
end

def negative_chess_line(to_remove=nil)
  full_array = [*-1..-7]
  full_array.delete to_remove
  full_array
end