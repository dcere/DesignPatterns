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
      @engine.start     #XXX Maybe start_engine??
      # Cruise out into the country and return
      @engine.stop      #XXX Maybe stop_engine??
   end
   
   def switch_to_diesel
      @engine = DieselEngine.new
   end
   
   def start_engine     # Delegation
      @engine.start
   end
   
   def sopt_engine      # Delegation
      @engine.stop
   end
   
end
