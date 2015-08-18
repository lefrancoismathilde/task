class Repository
  def initialize
    @task = []
  end

  def add(task)
    @task << task
  end

  def find(index)
    return @task
  end

  def destroy(task)
    @task.delete(task)
  end
end
