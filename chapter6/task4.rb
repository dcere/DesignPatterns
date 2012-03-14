class Task

   attr_reader :name
   attr_accessor :parent      # Changes
   
   def initialize(name)
      @name = name
      @parent = nil           # Changes
   end
   
   def get_time_required
      0.0
   end
   
end
