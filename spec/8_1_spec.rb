require 'spec_helper'

describe "removing exclamation marks" do
context "given string without ! in the end"
it "returns input string" do
    expect(remove_exclamation_marks("")).to eq("")
end

context "given string with ! in the end"
it "returns string without !" do    
expect((remove_exclamation_marks("Hello!!!"))).to eq("Hello")
end

context "given string with ! anywhere"
it "leaves ! in the beginning and inside of string" do
    expect((remove_exclamation_marks("!!He!l!lo!"))).to eq("!!He!l!lo")
end


context "given not string"
it "return input value" do
    expect((remove_exclamation_marks(8))).to eq(8)
end
end
 