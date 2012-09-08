require 'animals3'
require 'plants3'
require 'pond3'

pond = DuckPond.new(3,0)
pond.simulate_one_day
puts "---"

pond = FrogPond.new(2,0)
pond.simulate_one_day
puts "---"

pond = DuckWaterLilyPond.new(2,4)
pond.simulate_one_day
