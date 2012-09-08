require 'animals4'
require 'plants4'
require 'pond4'


pond = Pond.new(3, Duck, 2, WaterLily)
pond.simulate_one_day
