require "spec_helper"

describe "multiplication_table" do
    context "given 0 as input"
    context "given negative number"
    it "returns empty array" do
        expect(multiplication_table(0)).to eq([])
        expect(multiplication_table(-3)).to eq([])
    end
    context "given 1 as input"
    it "returns matrix with 1 in the first row" do
        expect(multiplication_table(1)).to eq([[1]])
    end

    context "given 5 as input"
    it "returns multiplication table 5x5" do
        expect(multiplication_table(5)).to eq([
            [1, 2, 3, 4, 5],
            [2, 4, 6, 8, 10],
            [3, 6, 9, 12, 15],
            [4, 8, 12, 16, 20],
            [5, 10, 15, 20, 25]
            ])
    end
    
end