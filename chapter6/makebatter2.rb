require 'composite2.rb'
require 'leafs2.rb'

class MakeBatterTask < CompositeTask      # Changes

   def initialize
      super('Make batter')
      add_sub_task(AddDryIngredientsTask.new)
      add_sub_task(MixTask.new)
   end
      
end
