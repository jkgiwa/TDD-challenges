require "entry_2"

RSpec.describe Entry do
    context "when created it takes a title and contents" do
        describe "#count_words" do
            it "returns the number of words in the contents" do
                entry = Entry.new("my_title", "once upon a time there was")
                expect(entry.count_words).to eq 6
            end
        end
    
    

        it "returns zero when contents is empty" do
            entry = Entry.new("my_title", " ")
            expect(entry.count_words).to eq 0
        end
    end

    describe "#reading_time" do
        context "given a wpm of some number (200)" do
            it "returns the ceiling of the number of minutes it takes to read the contents" do
                entry = Entry.new("my title", "one " * 550)
                expect(entry.reading_time(200)).to eq 3
            end
        end
    end

    context "given a wpm of zero" do
        it "fails" do
            entry = Entry.new("my_title", "one two three")
            expect{entry.reading_time(0)}.to raise_error "Reading speed must be above zero."
        end
    end

    describe "#reading_chunk" do
        context "with contents readable within the given minutes" do
            it "returns readable chunk" do
                entry = Entry.new("my title", "one two three")
                chunk = entry.reading_chunk(200, 1)
                expect(chunk).to eq "one two three"
            end
        end
    end

    context "with a contents unreadable within given minutes" do
        it "returns readable chunk" do
            entry = Entry.new("my title", "one two three")
            chunk = entry.reading_chunk(2, 1)
            expect(chunk).to eq "one two"
        end
    end

    it "returns the next chunk next time we are asked" do
        entry = Entry.new("my title", "one two three")
            chunk = entry.reading_chunk(2, 1)
            chunk = entry.reading_chunk(1, 1)
            expect(chunk).to eq "three"
    end
end
