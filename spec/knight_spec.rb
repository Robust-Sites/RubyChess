require_relative '../src/pieces/knight.rb'

describe Knight do
  context "An instance of knight" do 
    knight = Knight.new([0,0], "white")

    it "should have a coordinate and a color" do
      expect(knight.coordinate).not_to be_nil
      expect(knight.color).not_to be_nil
    end

    it "can return a list of possible_moves" do
      expect(knight.possible_moves)
    end
  end

  