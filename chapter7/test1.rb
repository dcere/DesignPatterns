require 'arrayiterator1.rb'

array = ['red', 'green', 'blue']

i = ArrayIterator.new(array)
while i.has_next?
   puts "item: #{i.next_item}"
end

i = ArrayIterator.new("abc")
while i.has_next?
   puts "item: #{i.next_item.chr}"
end
