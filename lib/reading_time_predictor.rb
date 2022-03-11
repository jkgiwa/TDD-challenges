def reading_time_predictor(words)
   word_count = words.split(" ")
   time = (word_count.length / 200.to_f).ceil
   return "#{time} minute read."
end
