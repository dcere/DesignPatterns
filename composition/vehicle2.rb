#Vehicle
#------------------
#       /\
#       ||
#------------------        ------------------
#Car                ---->  Engine
#------------------        ------------------
#                          start()
#                          stop()

class Vehicle

end


class Engine

   # All sorts of engine-related code...
   
   def start
      # Start the engine
   end
   
   def stop
      # Stop the engine
   end

end


class Car < Vehicle

   def initialize
      @engine = Engine.new
   end

   def sunday_drive
      @engine.start
      # Cruise out into the country and return
      @engine.stop
   end

end
