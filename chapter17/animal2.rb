require 'eatinganimals2'
require 'sleepinganimals2'

def new_animal(diet, awake)

   animal = Object.new

   if diet == :meat
      animal.extend(Carnivore)
   elsif diet == :plant
      animal.extend(Herbivore)
   end

   if awake == :day
      animal.extend(Diurnal)
   elsif awake == :night
      animal.extend(Nocturnal)
   end

   animal

end