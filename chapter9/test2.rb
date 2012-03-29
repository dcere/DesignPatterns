require 'britishtextobject2.rb'
require 'britishtextobjectadapter2.rb'
require 'renderer2.rb'


bto = BritishTextObject.new("Quite",100,"Army Blue Royal")
btoa = BritishTextObjectAdapter.new(bto)
renderer = Renderer.new()
renderer.render(btoa)
