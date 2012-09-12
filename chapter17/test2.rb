require 'animal2'

animal1 = new_animal(:meat, :night)
animal2 = new_animal(:plant, :day)

puts "Animal 1 eats #{animal1.diet} and sleeps at #{animal1.sleep_time}"
puts "Animal 2 eats #{animal2.diet} and sleeps at #{animal2.sleep_time}"