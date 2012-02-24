#Vehicle
#------------------
#   start_engine()
#   stop_engine()
#------------------
#       /\
#       ||
#------------------
#Car
#------------------


class Vehicle

   # All sorts of vehicle-related code...
   
   def start_engine
      #Start the engine
   end
   
   def stop_engine
      # Stop the engine
   end
   
end


class Car < Vehicle

   def sunday_drive
      start_engine
      # Cruise out into the country and return
      stop_engine
   end

end
