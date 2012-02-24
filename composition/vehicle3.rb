#Vehicle
#------------------
#       /\
#       ||
#------------------        ------------------
#Car                ---->  Engine
#------------------        ------------------
#                          start()
#                          stop()
#                          ------------------
#                                  /\
#        __________________________||
#       | _________________________ |
#       ||                         ||
#------------------        ------------------
#GasolineEngine            DieselEngine
#------------------        ------------------
   

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


class GasolinEngine < Engine

end


class DieselEngine < Engine

end


class Car < Vehicle

   def initialize
      @engine = GasolineEngine.new
   end

   def sunday_drive
      @engine.start
      # Cruise out into the country and return
      @engine.stop
   end
   
   def switch_to_diesel
      @engine = DieselEngine.new
   end

end
