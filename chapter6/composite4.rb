require 'task4.rb'

class CompositeTask < Task

   def initialize(name)
      super(name)
      @sub_tasks = []
   end
   
   def <<(task)
      @sub_tasks << task
      task.parent = self      # Changes
   end
   
   def remove_sub_task(task)
      @sub_tasks.delete(task)
      task.parent = nil       # Changes
   end
   
   def [](index)
      @sub_tasks[index]
   end
   
   def get_time_required
      time = 0.0
      @sub_tasks.each do |task|
         time += task.get_time_required
      end
      time
   end
   
   def get_ultimate_parent    # Changes
      task = self
      while task
         puts "task: #{task}"
         task = task.parent
      end
   end
   
end
