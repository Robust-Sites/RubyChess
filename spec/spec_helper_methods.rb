def assert_coordinates(piece, coordinate_array)
  coordinate_array.each do |coordinate|
    expect(piece.possible_moves).to include(coordinate)
  end
end

def create_coordinate_array(x_values, y_values)
  coordinates = []
  x_values.each_with_index do |x, idx|
    coordinates.push([x, y_values[idx]])
  end
  coordinates
end
