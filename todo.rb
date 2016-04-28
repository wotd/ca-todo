=begin
List Class:
  - Create a list - done
  - Add task to list - done
  - Show all tasks - done
  - Read a task from a file
  - Write a list to a file
  - Delete a task
  - Update a task

Task Class:
  - Create a task item - done
=end

#Modules
module Menu
  def menu
    " Welcome to the TodoList Program!
    This menu will help you use the Task List System
    1) Add
    2) Show
    3) Write to file
    Q) Quit "
  end
  def show
    menu
  end
end

module Promptable
  def prompt(message = "What would you like to do?" , prompt = ':> ')
    puts message
    print prompt
    gets.chomp
  end
end

#Classes
class List
  attr_reader :all_tasks

  def initialize
    @all_tasks = []
  end

  def add(task)
    @all_tasks << task
  end

  def show
    all_tasks
  end
end

class Task
  attr_reader :task_description

  def initialize(task_description)
    @task_description = task_description
  end

  def to_s
    task_description
  end
end

#Program starts here
include Menu
include Promptable

my_list = List.new
puts 'Please choose from the following list:'
until (user_input = prompt(show).downcase) == 'q' do
  case user_input
    when "1"
      my_list.add(Task.new("Make sandwich!"))
    when "2"
      puts my_list.show
    else
      puts 'Sorry, I did not understand'
  end
end

puts 'Outro - Thanks for using the menu system!'
