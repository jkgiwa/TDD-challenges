class Entry

  def initialize(content)
    @date = Time.new
    @content = content
  end

  def date
    if @date.zone == "GMT"
      return date_uk_format
    end  
  end

  def date_uk_format
    return "#{@date.day}-#{@date.month}-#{@date.year}"
  end

  def content
    return @content
  end

end