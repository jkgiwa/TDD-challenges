require 'diary_2' 
require 'entry_2'

RSpec.describe "integration" do
    context "when entries are added to the diary" do
        it "comes back in the diary" do
            diary = Diary.new
            entry_1 = Entry.new("title_1", "contents_1")
            entry_2 = Entry.new("title_2", "contents_2")
            diary.add(entry_1)
            diary.add(entry_2)
            expect(diary.all).to eq [entry_1, entry_2]
        end
    end

    describe "#count_words" do
        it "returns the number of words in the whole diary" do
            diary = Diary.new
            entry_1 = Entry.new("my_title_1", "once upon a time there was")
            entry_2 = Entry.new("my_title_2", "once upon a time there was")
            entry_3 = Entry.new("my_title_3", "once upon a time there was")
            diary.add(entry_1)
            diary.add(entry_2)
            diary.add(entry_3)
            expect(diary.count_words).to eq 18
        end

        it "returns zero when contents is empty" do
            diary = Diary.new
            expect(diary.count_words).to eq 0
        end
    end

    describe "#reading_time" do
        it "calculates the reading time for all entries" do
            diary = Diary.new
            entry_1 = Entry.new("my_title_1", "once upon a time there was")
            entry_2 = Entry.new("my_title_2", "once upon a time there was")
            entry_3 = Entry.new("my_title_3", "once upon a time there was")
            diary.add(entry_1)
            diary.add(entry_2)
            diary.add(entry_3)
            expect(diary.reading_time(2)).to eq 9
        end
    end
    
    describe "best reading time entry behaviour" do
        it "fails where wpm is 0" do
            diary = Diary.new
            entry_1 = Entry.new("my_title_1", "once upon a time there was")
            diary.add(entry_1)
            expect {diary.find_best_entry_for_reading_time(0, 1)}.to raise_error ( "WPM must be positive."
            )
        end
    
    


        context "where we just have one entry and it is readable in time" do
            it "returns entry" do
                diary = Diary.new
                
                entry_1 = Entry.new("my_title_1", "once upon a time there was")  # 3 minutes
                diary.add(entry_1)
                result = diary.find_best_entry_for_reading_time(2, 3)
                expect(result).to eq entry_1
            end
        end


        context "where we just have one entry and it is unreadable in time" do
            it "returns nil" do
                diary = Diary.new
                entry_1 = Entry.new("my_title_1", "once upon a time there was")
                diary.add(entry_1)
                result = diary.find_best_entry_for_reading_time(2, 1)
                expect(result).to eq nil
            end
        end

        context "where we have multiple entries" do
            it "returns the longest entry the user could read in this time" do
                diary = Diary.new
                best_entry = Entry.new("my title", "once upon")
                diary.add(Entry.new("my title", "once"))
                diary.add(best_entry)
                diary.add(Entry.new("my title", "once upon a"))
                diary.add(Entry.new("my title", "once upon a time"))
                result = diary.find_best_entry_for_reading_time(2, 1)
                expect(result).to eq best_entry
            end
        end
    end
end


