require 'foreach2.rb'

puts "Our internal iterator:"
a = [10, 20, 30]
for_each_element(a) do |element|
   puts "The element is #{element}"
end

puts "Ruby's internal iterator:"
a.each do |element|
   puts "The element is #{element}"
end
