# require "diary_entry"

# RSpec.describe "DiaryEntry" do
#   it "initialises and takes 2 strings" do
#     diary_entry = DiaryEntry.new("monday", "today was a good day")
#     expect(diary_entry.title).to eq "monday"
#     expect(diary_entry.contents).to eq "today was a good day"
#   end

# 	describe "#count_words" do
# 		it "returns the number of words as an integer" do
# 			diary_entry = DiaryEntry.new("monday", "today was a good day")
# 			expect(diary_entry.count_words).to eq 5
# 		end

# 		it "returns 0 if no words are input" do
# 			diary_entry = DiaryEntry.new("monday","") 
# 			expect(diary_entry.count_words).to eq 0
# 		end
# 	end

# 	describe "#reading_time" do 
# 		context "given a wpm of 200pm" do
# 			it "returns the ceiling of the number of minutes" do
# 				diary_entry = DiaryEntry.new("monday", "one " * 550) 
# 				expect(diary_entry.reading_time(200)).to eq 3
# 			end
# 		end

# 		context "given a wpm of 0" do
# 			it "fails" do 
# 				diary_entry = DiaryEntry.new("my_title", "one two three")
# 				expect{ diary_entry.reading_time(0) }.to raise_error "your reading speed must be above zero"
# 			end
# 		end
# 	end

# 	describe "#reading_chunk" do
# 		context "with a contents readable within the given minutes" do 
# 			it "return the full contents" do
# 				diary_entry = DiaryEntry.new("my_title","one two three" )
# 				chunk = diary_entry.reading_chunk(200, 1)
# 				expect(chunk).to eq "one two three"
# 			end
# 		end

# 		context "with a contents unreadable within the time" do
# 			it "returns a readable chunk" do 
# 				diary_entry = DiaryEntry.new("my_title", "one two three")
# 				chunk = diary_entry.reading_chunk(2, 1)
# 				expect(chunk).to eq "one two"
# 			end

# 			it "returns the next chunk, next time we are asked" do
# 				diary_entry = DiaryEntry.new("my_title", "one two three")
# 				diary_entry.reading_chunk(2, 1)
# 				chunk = diary_entry.reading_chunk(2, 1)
# 				expect(chunk).to eq "three"
# 			end

# 			it "restarts after reading the whole contents" do
# 				diary_entry = DiaryEntry.new("my_title", "one two three")
# 				diary_entry.reading_chunk(2, 1)
# 				diary_entry.reading_chunk(2, 1)
# 				chunk = diary_entry.reading_chunk(2, 1)
# 				expect(chunk).to eq "one two"
# 			end

# 			it "restarts if it finishes exactly on the end" do
# 				diary_entry = DiaryEntry.new("my_title", "one two three")
# 				diary_entry.reading_chunk(2, 1)
# 				diary_entry.reading_chunk(1, 1)
# 				chunk = diary_entry.reading_chunk(2, 1)
# 				expect(chunk).to eq "one two"
# 			end
# 		end

# 	end
# end
