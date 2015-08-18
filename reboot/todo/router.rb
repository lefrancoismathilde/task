class Router
  def initialize
  end

  def start
    loop do
      print_menu
      action = gets.chomp.to_i
      case action
      when 1 then @controller.display_all_tasks
      end
  end

  private

  def print_menu
    puts "What's next ?"
    puts "1. List task"
    puts "2. Add taks"
    puts "3. Mark task as done"
end
