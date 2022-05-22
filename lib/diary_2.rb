class Diary
  def initialize
    @entries = []
  end

  def add(entry)
    # entry is an instance of DiaryEntry
    # Returns nothing
    @entries << entry
  end

  def all
    return @entries
    # Returns a list of instances of DiaryEntry
  end

  def count_words
    return @entries.sum(&:count_words)
  end

  def reading_time(wpm)
    fail "WPM must be positive." unless wpm.positive?
    return (count_words / wpm.to_f)
    #entry.reading_time(wpm)
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    # finds closest reading time to the passed in minutes time
    fail "WPM must be positive." unless wpm.positive?
    readable_entries(wpm, minutes).max_by(&:count_words)
    #entry.count_words
  end

  private

  def readable_entries(wpm, minutes)
    # return every entry that can be read within the minutes passed in
    return @entries.select do |entry|
      entry.reading_time(wpm) <= minutes
    end
  end
end
