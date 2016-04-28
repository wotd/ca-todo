=begin
List Class:
  - Create a list
  - Add task to list
  - Show all tasks
  - Read a task from a file
  - Write a list to a file
  - Delete a task
  - Update a task

Task Class:
  - Create a task item
=end

#Classes
class List
  attr_reader :all_tasks

  def initialize
    @all_tasks = []
  end
end

class Task
  attr_reader :task_description

  def initialize(task_description)
    @task_description = task_description
  end

end

#Program starts here
my_list = List.new
