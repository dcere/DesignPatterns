require 'composite4.rb'
require 'leafs4.rb'

class MakeBatterTask < CompositeTask

   def initialize
      super('Make batter')
      self << AddDryIngredientsTask.new
      self << MixTask.new
   end
      
end
