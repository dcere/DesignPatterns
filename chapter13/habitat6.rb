require 'animals6'
require 'plants6'

class Habitat

   def initialize(number_animals, number_plants, organism_factory)

      @organism_factory = organism_factory

      @animals = []
      number_animals.times do |i|
         animal = @organism_factory.new_animal("Animal-#{i}")
         @animals << animal
      end

      @plants = []
      number_plants.times do |i|
         plant = @organism_factory.new_plant("Plant-#{i}")
         @plants << plant
      end

   end


   def simulate_one_day
      @plants.each  { |plant|  plant.grow  }
      @animals.each { |animal| animal.speak }
      @animals.each { |animal| animal.eat }
      @animals.each { |animal| animal.sleep }
   end

end


class OrganismFactory

   def initialize(plant_class, animal_class)
      @plant_class = plant_class
      @animal_class = animal_class
   end

   def new_animal(name)
      @animal_class.new(name)
   end


   def new_plant(name)
      @plant_class.new(name)
   end

end
