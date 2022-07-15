require_relative '../src/pieces/bishop.rb'
require_relative '../spec/spec_helper_methods.rb'

describe Bishop do
  context "An instance of knight" do
    knight = Knight.new([5,5], "black")

    it "should have a coordinate and a color" do
      expect(knight.coordinate).not_to be_nil
      expect(knight.color).not_to be_nil
    end

    it "can return a list of possible_moves" do
      expect(queen.possible_moves).not_to be_nil
    end
  end

  context "A knight's possible_moves" do
    knight = Knight.new([5,5], "black")

    it "does not return value's that are out of bounds" do
      moveset = knight.possible_moves
      out_of_bounds(moveset)
    end
