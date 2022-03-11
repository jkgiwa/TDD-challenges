class PiggyBank

    def initialize
        @bank = []
    end

    def add(coin)
        @bank.push(coin)
    end

    def report
        return @bank
    end

    def cling
        unless @bank == [] 
            return "*cling*"
        else 
            fail "You've not got anything in it." if @bank.nil?
            return @bank
        end
    end

end
