require 'spec_helper'

describe "dna_to_rna" do

context "given empty string"
it "returns empty string" do
expect(dna_to_rna("")).to eq("")
end 

context "given string with mixed register"
it "returns result with uppercase" do
expect(dna_to_rna("gCaTgCATGCATcatgCta")).to eq("GCAUGCAUGCAUCAUGCUA")
end

context "given string without T"
it "returns uppercased input string" do
expect(dna_to_rna("GCAAGCCGAGCCgaAgcgcA")).to eq("GCAAGCCGAGCCGAAGCGCA")
end

context "given string with U"
it "returns empty string" do
    expect(dna_to_rna("GAUCT")).to eq("")
end 

context "given string only with T"
it "returns string only with U" do
    expect(dna_to_rna("TTTTT")).to eq("UUUUU")
end

context "given string without T"
it "returns input string" do
    expect(dna_to_rna("agCgGAC")).to eq("AGCGGAC")
end

context "given string with unknown component"
it "returns empty string" do
    expect(dna_to_rna("ADKSJF")).to eq("")
end
end