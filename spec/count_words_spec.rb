require "count_words"

RSpec.describe "count_words method" do
    it "returns a string" do
        result = count_words("juliana is cool")
        expect(result).to eq "juliana is cool"
    end


    it "splits the string into an array" do
        count_words("juliana is cool")
        array_split = "juliana is cool".split(" ")
        result = array_split
        expect(result).to eq ["juliana", "is", "cool"]
    end

    it "counts the number of words in the array" do
        count_words("juliana is cool")
        array_split = "juliana is cool".split(" ")
        result = array_split.count
        expect(result).to eq 3
    end
end