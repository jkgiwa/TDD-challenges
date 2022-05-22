require "grammar_stats"

RSpec.describe "GrammarStats" do
    it "returns false if text does not start with a capital letter and has a sentence-ending punctuation mark" do
        grammar_stats = GrammarStats.new
        result = grammar_stats.check("it's beginning to look a lot like Christmas.")
        expect(result).to eq false
    end

    it "returns false if text starts with a capital letter and does not have a sentence-ending punctuation mark" do
        grammar_stats = GrammarStats.new
        result = grammar_stats.check("It's beginning to look a lot like Christmas")
        expect(result).to eq false
    end

    it "returns true if text ends with a capital letter and sentence-ending punctuation mark." do
        grammar_stats = GrammarStats.new
        result = grammar_stats.check("It's beginning to look a lot like Christmas.")
        expect(result).to eq true
    end

    it "saves each result of the check" do
        grammar_stats = GrammarStats.new
        grammar_stats.check("It's beginning to look a lot like Christmas.")
        grammar_stats.check("is it a great day?")
        grammar_stats.check("So what")
        percentage = grammar_stats.percentage_good
        expect(percentage).to eq 33
    end

end
