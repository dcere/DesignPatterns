require 'britishtextobject5.rb'
require 'renderer5.rb'


bto = BritishTextObject.new("Quite",100,"Army Blue Royal")

def bto.text
   string
end

def bto.size_inches
   size_mm / 25.4
end

def bto.color
   colour
end


renderer = Renderer.new()
renderer.render(bto)
