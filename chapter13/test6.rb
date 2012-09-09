require 'habitat6'

jungle_organism_factory = OrganismFactory.new(Tree, Tiger)
jungle = Habitat.new(1, 4, jungle_organism_factory)
jungle.simulate_one_day
puts "---"

pond_organism_factory = OrganismFactory.new(WaterLily, Frog)
pond = Habitat.new(2, 4, pond_organism_factory)
pond.simulate_one_day