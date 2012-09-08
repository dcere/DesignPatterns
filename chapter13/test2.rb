require 'duck2'
require 'frog2'
require 'pond2'

pond = DuckPond.new(3)
pond.simulate_one_day

pond = FrogPond.new(2)
pond.simulate_one_day