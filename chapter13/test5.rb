require 'habitat5'


jungle = Habitat.new(1, 4, JungleOrganismFactory.new)
jungle.simulate_one_day
puts "---"

pond = Habitat.new(1, 4, PondOrganismFactory.new)
pond.simulate_one_day