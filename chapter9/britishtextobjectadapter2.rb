require 'textobject2.rb'

class BritishTextObjectAdapter < TextObject

   def initialize(bto)
      @bto = bto
   end
   
   def text
      return @bto.string
   end
   
   def size_inches
      return @bto.size_mm / 25.44
   end
   
   def color
      return @bto.colour
   end

end
