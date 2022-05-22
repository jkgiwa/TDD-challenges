class Entry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @furthest_word_read = 0
  end

  def title
    # Returns the title as a string
    return @title
  end

  def contents
    # Returns the contents as a string
    return @contents
  end

  def count_words
    # Returns the number of words in the contents as an integer
    @contents.split(" ").length
  end

  def reading_time(wpm)
    fail "Reading speed must be above zero." unless wpm > 0
    return (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    no_words_we_can_read = wpm * minutes
    start_from = @furthest_word_read
    end_at = @furthest_word_read + no_words_we_can_read
    word_list = words[start_from, end_at]
    @furthest_word_read = end_at
    return word_list.join(" ")
  end 

  private
  def words
    return @contents.split(" ")
  end
  
end
