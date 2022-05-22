class Entry
    def initialize(date, contents)
        @date = date
        @contents = contents
    end

    def date 
        return @date
    end

    def contents
        return @contents
    end

    def page
        @page = {@date => @contents}
    end
end
