require 'composite3.rb'
require 'leafs3.rb'

class MakeBatterTask < CompositeTask

   def initialize
      super('Make batter')
      self << AddDryIngredientsTask.new
      self << MixTask.new
   end
      
end
