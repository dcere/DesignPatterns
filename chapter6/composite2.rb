require 'task2.rb'

class CompositeTask < Task    # Changes

   def initialize(name)
      super(name)
      @sub_tasks = []
   end
   
   def add_sub_task(task)
      @sub_tasks << task
   end
   
   def remove_sub_task(task)
      @sub_tasks.delete(task)
   end
   
   def get_time_required
      time = 0.0
      @sub_tasks.each do |task|
         time += task.get_time_required
      end
      time
   end
   
end
