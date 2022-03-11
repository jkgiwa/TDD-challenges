def todo_checker(text)
    @TODO = "todo"
    text_split = text.split(" ")
    return text_split.include?(@TODO)
end

