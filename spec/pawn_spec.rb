require_relative '../src/pieces/pawn.rb'
require_relative 'spec_helper_methods.rb'

describe Pawn do 
  context "instance at [5, 2]" do 
    pawn = Pawn.new([5, 2], "white")

    it "should have a coordinate" do 
      expect(pawn.coordinate).not_to be_nil
    end

    it "should have a color" do 
      expect(pawn.color).not_to be_nil
    end

    it "returns moveset of possible_moves" do 
      expect(pawn.possible_moves).not_to be_nil
    end
  end

  context "that hasn't moved yet" do
    context "white pawn" do 
      pawn = Pawn.new([3, 1], "white")
      it "should be able to move forward two spaces" do 
        expect(pawn.possible_moves).to include([3, 3]) 
      end

      it "should return the appropriate moveset" do 
        expect(pawn.possible_moves).to include([2,2]) 
        expect(pawn.possible_moves).to include([3,2])
        expect(pawn.possible_moves).to include([3,3])
        expect(pawn.possible_moves).to include([4,2])

      end
    end

    context "with color: black" do 
      pawn = Pawn.new([3, 6], "black")
      it "should be able to move forward two spaces" do 
        expect(pawn.possible_moves).to include([3, 4])
      end
    end
  end

  context "on border" do 
    pawn = Pawn.new([0, 1], "white")
    it "does not return values that are outside board" do 
      out_of_bounds pawn.possible_moves
    end
  end
end
