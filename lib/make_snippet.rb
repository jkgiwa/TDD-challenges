def make_snippet(str)
  @str = str.split(" ")
  selected_five = @str.slice(0, 5).join(" ")
  return selected_five + "..."

end