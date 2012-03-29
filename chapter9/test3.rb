require 'britishtextobject3.rb'
#require 'britishtextobjectadapter3.rb'
require 'renderer3.rb'


bto = BritishTextObject.new("Quite",100,"Army Blue Royal")

class BritishTextObject
   
   def text
      return string
   end
   
   def size_inches
      return size_mm / 25.44
   end
   
   def color
      return colour
   end

end

renderer = Renderer.new()
renderer.render(bto)
