{{PROBLEM}} Class Design Recipe
1. Describe the Problem
  As a user
  So that I can keep track of my tasks
  I want a program that I can add todo tasks to and see a list of them.

  As a user
  So that I can focus on tasks to complete
  I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface

``` ruby
  class TodoList
		def initialize
			list = [] # the list of strings that will be added.
		end 

		def add(task) # this will be a string repsrenting an instruction
			# it will add a new task and include it in the list
			# then return the update list
			return list 
		end

		def list
			# Returns a list of the tasks added as strings
		end

		def complete(task)
			# Returns nothing
			# Fails if the task doesn't exist
		end
	end

	```

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.
	```ruby
	# 1
	todo_list = TodoList.new
	todo_list.list # => []

	# 2 
	todo_list = TodoList.new
	todo_list.add("Wash the car")
	todo_list.list # => ["wash the car"]

	# 3
	todo_list = TodoList.new
	todo_list.add("Wash the car")
	todo_list.add("Wash the dog")
	todo_list.list # => ["Wash the car", "Wash the dog"]

	# 4
	todo_list = TodoList.new
	todo_list.add("Wash the car")
	todo_list.add("Wash the dog")
	todo_list.list # => ["Wash the car", "Wash the dog"]
	todo_list.complete("Wash the car")
	todo_list.list # => ["Wash the dog"]

	# 5
	todo_list = TodoList.new
	todo_list.add("Wash the car")
	todo_list.complete("Wash the sheep") # fails "No such task."

	```

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.