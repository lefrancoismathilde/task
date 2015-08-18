require_relative"task"
require_relative"repository"
require_relative"controller"
require_relative"view"

repo = Repository.new

task1 = Tash.new("course")
task2 = Tash.new("menage")
taks1.mark_as_done

repo.add(task1)
repo.add(task2)

controller= Controller.new(repo, View.new)
controller.add_task
