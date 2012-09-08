class Duck

   def initialize(name)
      @name = name
   end


   def eat
      puts "Duck #{@name} is eating."
   end


   def speak
      puts "Duck #{@name} says Quack!"
   end


   def sleep
      puts "Duck #{@name} sleeps quietly."
   end


end


class Frog

   def initialize(name)
      @name = name
   end


   def eat
      puts "Frog #{@name} is eating."
   end


   def speak
      puts "Frog #{@name} says Croak!"
   end


   def sleep
      puts "Frog #{@name} doesn't sleep; he croaks all night."
   end


end
