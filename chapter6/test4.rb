require 'makebatter4.rb'

makebatter = MakeBatterTask.new()
puts "Time to make batter: #{makebatter.get_time_required} seconds"

makebatter.get_ultimate_parent()

