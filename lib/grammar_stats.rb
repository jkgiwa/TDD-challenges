class GrammarStats
    def initialize
      @counter = []
    end
  
    def check(text) # text is a string
      check = (text[0] == text[0].upcase) && (text[-1] == ("." || "!" || "?"))
      @counter.push(check)
      return check
    end

  
    def percentage_good
      number_of_correct = @counter.count(true)
      percentage = (number_of_correct.to_f / @counter.length) * 100
      return percentage.to_i
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
    end
  end