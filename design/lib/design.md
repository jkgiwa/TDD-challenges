1. Describe the problem
    As a user
    So that I can record my experiences
    I want to keep a regular diary

    As a user
    So that I can reflect on my experiences
    I want to read my past diary entries

    As a user
    So that I can reflect on my experiences in my busy day
    I want to select diary entries to read based on how much time I have and my reading speed

    As a user
    So that I can keep track of my tasks
    I want to keep a todo list along with my diary

    As a user
    So that I can keep track of my contacts
    I want to see a list of all of the mobile phone numbers in all my diary entries

2. Design the Class System
    Diary <-- Diary Entry <--- Contacts
    TodoList <-- Todo
    Phonebook <-- Contacts


    Diary 
    add(entry)  # It will add entries
    entry_list    # It will list all entries
    reading_time 
    find_best_entry_for_reading_time   
    select_entry(date)  # returns entry from given date
    select_contact(name) => returns name & number
    contact_list => list of all the contacts

    

    Entry(date, contents)
    date  = date 
    contents  = contents
    reading_time 
    reading_chunk 
    

    TodoList
    add(todo)
    all

    Todo
    initialize(task)
    task = returns task

    Phonebook
    add(contact)
    list

    Contact(name, number)
    name = returns name
    number = returns number

3. 
    # 1 test empty diary
        diary = Diary.new
        diary.list # => []

    # 2 add 1 entry to diary
        diary = Diary.new
        entry = Entry.new("18/03/22", "Today I ate cake.")
        diary.add(entry)
        diary.list # => ["18/03/22", "Today I ate cake."]

    # 3 add multiple entries to diary
        diary = Diary.new
        entry_1 = Entry.new("18/03/22", "Today I ate cake.")
        entry_2 = Entry.new("19/03/22", "Today I ate pie.")
        entry_3 = Entry.new("20/03/22", "Today I ate rice.")
        diary.add(entry_1)
        diary.add(entry_2)
        diary.add(entry_3)
        diary.list # => [["18/03/22" => "Today I ate cake."], ["19/03/22" => "Today I ate pie."], ["20/03/22" => "Today I ate rice."]]

    # 4 test the number of minutes it takes to read contents
        diary = Diary.new
        entry_1 = Entry.new("18/03/22", "Today I ate cake.")
        entry_2 = Entry.new("19/03/22", "Today I ate pie.")
        entry_3 = Entry.new("20/03/22", "Today I ate rice.")
        diary.add(entry_1)
        diary.add(entry_2)
        diary.add(entry_3)
        diary.list.reading_time(200) # => 1 

    # 5 tests that it selects contents readable within given minutes
        diary = Diary.new
        entry_1 = Entry.new("18/03/22" => "one " * 200)
        entry_2 = Entry.new("19/03/22" => "one two " * 300)
        entry_3 = Entry.new("20/03/22" => "one two three" * 300)
        diary.add(entry_1)
        diary.add(entry_2)
        diary.add(entry_3)
        diary.list.find_best_entry_for_reading_time(200, 1)  # => "18/03/22" =>  "one " * 200

    # 6 tests that it selects the correct contents when given a date
        diary = Diary.new
        entry_1 = Entry.new("18/03/22" => "one " * 200)
        entry_2 = Entry.new("19/03/22" => "one two " * 300)
        entry_3 = Entry.new("20/03/22" => "one two three" * 300)
        diary.add(entry_1)
        diary.add(entry_2)
        diary.add(entry_3)
        diary.select_entry("18/03/22") # => "one " * 200

    # 7 tests that it selects the correct contact number when given a name
        diary = Diary.new
        contact = Contact.new
        contact.name = "Juliana"
        contact.number = 07811111111
        diary.add(contact)
        diary.select_contact("Juliana") # => 07811111111

    # 8 tests that it lists all the contact numbers
        diary = Diary.new
        contact_1 = Contact.new
        contact_1.name = "Juliana"
        contact_1.number = 07811111111
        diary.add(contact_1)
        contact_2 = Contact.new
        contact_2.name = "Kafia"
        contact_2.number = 07821111113
        diary.add(contact_2)
        contact_3 = Contact.new
        contact_3.name = "Sarah"
        contact_3.number = 07831111454
        diary.add(contact_3)
        contact_4 = Contact.new
        contact_4.name = "Maria"
        contact_4.number = 07811111431
        diary.add(contact_4)
        diary.contact_list # => ["Juliana" +]

        












    
    
