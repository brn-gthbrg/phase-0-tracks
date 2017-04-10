require 'sqlite3'

#CREATE DATABASE and TABLE
database = SQLite3::Database.new("todolist.db")
database.results_as_hash = true

create_table = <<-SQL
    CREATE TABLE IF NOT EXISTS tasks(
      id INTEGER PRIMARY KEY,
      meeting_with VARCHAR(255),
      note VARCHAR(255)
      );
SQL
database.execute(create_table)

#DATABASE COMMAND METHODS
def add_task(database, meeting_with, note)
  database.execute("INSERT INTO tasks (meeting_with, note) VALUES (?, ?)", [meeting_with, note])
end

def view_list(database)
  list = database.execute("SELECT * FROM tasks;")
  list.each do |task|
    puts "Task #{task[0]}: You need to #{task[2]} with #{task[1]}"
  end
end

def delete_task(database, task_delete)
  database.execute("DELETE FROM tasks WHERE id=?", [task_delete])
end

def view_all_meetings(database, meeting_with)
  people = database.execute("SELECT * FROM tasks WHERE meeting_with=?", [meeting_with])
    people.each do |task|
      puts "You need to #{task[2]} with #{task[1]}"
    end
end

# USER INTERFACE
puts "This is the Task Manager"
answer = 0
error = 0

until answer == 5 || error == 3
  puts "What would you like to do? (Enter 1-5)"
  puts "1. View to-do list 2. Check meetings with person 3. Add task to list 4. Delete a task 5. Exit program"
  answer = gets.chomp.to_i
  if answer == 1
    view_list(database)
  elsif answer == 2
    puts "Type the name of the person you are meeting with"
    name_given = gets.chomp
    view_all_meetings(database, name_given)
  elsif answer == 3
    puts "Who are you meeting with? Type 'none' if nobody"
    name_given = gets.chomp
    puts "Give a brief description of the task"
    description_given = gets.chomp
    add_task(database, name_given, description_given)
  elsif answer == 4
    view_list(database)
    puts "What is the ID number of the task you want to delete?"
    task_delete = gets.chomp.to_i
    delete_task(database, task_delete)
  elsif answer == 5
    puts "Now exiting the program. Goodbye"
  elsif error == 3
  else
    error += 1
      if error == 3
      puts "Your response has failed too many times. Please restart the program to try again. Goodbye"
      else
        puts "I'm sorry, please try again"
        puts "Please enter 1-5"
      end
  end
end

