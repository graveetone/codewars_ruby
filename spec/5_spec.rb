require "spec_helper"

describe "find" do 
    context "given empty array"
    it "returns empty array" do
        expect(find([])).to eq([])
    end

    context "given array with one element"
    it "returns empty array" do
        expect(find([4])).to eq([])
    end

    context "given array with two elements"
    it "returns valid (maybe float) output" do
        expect(find([4, 1])).to eq(2.5)
    end

    context "given array with float elements"
    it "returns valid (maybe approximate) output" do
        expect(find([5.19, 15.39, 0.09])).to be_within(0.1).of(10.29)
    end

    context "given usual progression with skipped element"
    it "returns skipped element" do
        expect(find([1, 6, 16])).to eq(11)
    end
end