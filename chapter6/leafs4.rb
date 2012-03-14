class AddDryIngredientsTask < Task

   def initialize
      super('Add dry ingredients')
   end
   
   def get_time_required
      1.0
   end
   
end


class MixTask < Task

   def initialize
      super('Mix that batter up!')
   end
   
   def get_time_required
      3.0
   end
   
end
