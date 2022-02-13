require "spec_helper"

describe "stray" do
context "given empty array"
it "returns empty array" do
    expect(stray([])).to eq([])
end

context "given array with one number"
it "returns single number" do
    expect(stray([4])).to eq(4)
end

context "given even-length array"
it "returns single number" do
    expect(stray([2, 4, 2, 2])).to eq(4)
end

context "given array with two elements"
it "returns first element" do
    expect(stray([199, 143])).to eq(199)
end

context "given array without single number"
it "returns input array" do 
    expect(stray([4, 4, 4, 4])).to eq([4, 4, 4, 4])
end

context "given odd-length array with single number"
it "returns single number" do
    expect(stray([1, 4, 1, 1, 1])).to eq(4)
end
end