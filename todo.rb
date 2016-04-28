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

end

#Program starts here
my_list = List.new
my_list.add(Task.new('Make tosts'))
puts my_list.show
