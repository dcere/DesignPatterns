require 'task1.rb'
require 'leafs1.rb'

class MakeBatterTask < Task

   def initialize
      super('Make batter')
      @sub_tasks = []
      add_sub_task(AddDryIngredientsTask.new)
      add_sub_task(MixTask.new)
   end
   
   def add_sub_task(task)
      @sub_tasks << task
   end
   
   def remove_sub_task(task)
      @subtasks.delete(task)
   end
   
   def get_time_required
      time = 0.0
      @sub_tasks.each do |task|
         time += task.get_time_required
      end
      time
   end
   
end
