class Controller
  def initialize(repositorory, view)
    @repository = repository
    @view = view
  end

  def display_all_task
    tasks = @repository.all
    @view.display_tasks(tasks)
    repository.add(task)
  end

  def add_tasks
    # view demande à user description
    description = @view.ask_user_for_description
    #creation dd'une nkuvelle tâche ave cdescription
    task = Task.new(description)
    # ajouter au ripo une nouvelle tache
    @repository.add(task)
  end

  def mark_tack_as_done
    # demande à user la tâche à marquer comme faites
    @view.ask_user_for_task
  end

  def destroy_task
  end

end
