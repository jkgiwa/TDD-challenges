1. Describe the problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

2. Design the Method Signature

```ruby
reading_time_predictor(words)

*  words is an integer. It will divide by 200 and return a float
* the float will have the ceil method to round it up
* a string will be returned "it will take approximately 2 minutes to read this"
```
3. Create Examples as Tests

```ruby
# 1
reading_time_predictor("one " * 200)
# => "1 minute read."

# 2
reading_time_predictor("one " * 300)
# => "2 minute read."

# 3
reading_time_predictor("one " * 1122)
# => "6 minute read."

# 4
reading_time_predictor("one " * 20)
# => "1 minute read."

# 5
reading_time_predictor()
# => "you've not input anything"




It will return:
- a value using modulo and return a float
- it will include this in a string that will also be returned:
"It will take you approximately #{time}