require_relative '../src/pieces/king.rb'

describe King do
  context "An instance of king" do 
    king = King.new([4, 0], "white")

    it "should have a coordinate" do 
      expect(king.coordinate).not_to be_nil
    end

    it "should have a color" do 
      expect(king.color).not_to be_nil
    end
  end

  context "a king's possible moves" do 
  end
end
