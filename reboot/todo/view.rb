class View
  def display_tasks(tasks)
    tasks.each_with_index do |task, index|
      status = task.done ? "[X]" : "[ ]"
      puts "#{index + 1} #{status} #{task_description}"
    end
  end

  def ask_user_for_description
    puts "Whats do you want to do ?"
    print ">"
    return gets.chomp
  end

  def ask_user_for_task_id
    puts "Which task do you want to mark as done ?"
    print ">"
    return gets.chomp
end
