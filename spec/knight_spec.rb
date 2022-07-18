require_relative '../src/pieces/knight.rb'
require_relative '../spec/spec_helper_methods.rb'

describe Knight do
  context "An instance of knight" do 
    knight = Knight.new([0,0], "white")

    it "should have a coordinate and a color" do
      expect(knight.coordinate).not_to be_nil
      expect(knight.color).not_to be_nil
    end

    it "can return a list of possible_moves" do
      expect(knight.possible_moves).not_to be_nil
    end


    it "should not return value's that are out of bounds" do 
      expect(knight.possible_moves)
    end
  end

  context "a knight on [5, 1]" do 
    knight = Knight.new([5, 1], "white")
    it "returns the appropriate moveset" do 
      expected_moveset = create_coordinate_array(
                           [3, 3, 4, 6, 7, 7],
                           [2, 0, 3, 3, 2, 0]) 
      assert_coordinates(knight, expected_moveset)
    end
  end
end
