1. Describe the problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string @TODO

2. Design the Method Signature

```ruby
todo_checker(text)

#* the text parameter will take a string
#* it will turn the string into an array
#* it will use the each method along with equality to check whether a word contains "todo"
#* if it contains "todo"/@TODO return true

```

3. Create Examples as Tests

```ruby
# 1
todo_checker("todo - washing")
# => true

# 2
todo_checker("I need to go shopping")
# => false

# 3
todo_check("")
# => false

