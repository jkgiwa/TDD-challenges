require "diary_2"

RSpec.describe Diary do
    context "when there are no entries" do
        it "shows an empty array" do
            diary = Diary.new
            expect(diary.all).to eq []
        end

        it "has a word count of zero" do
            diary = Diary.new
            expect(diary.count_words).to eq 0
        end

        it "has a best readable entry of nil" do
            diary = Diary.new
            expect(diary.find_best_entry_for_reading_time(2,1)).to eq nil
        end
    end
end

        
        
        