class Computer

   attr_accessor :display
   attr_accessor :motherboard
   attr_reader   :drives

   def initialize(display = :crt, motherboard = Motherboard.new, drives = [])
      @motherboard = motherboard
      @drives = drives
      @display = display
   end

end


class DesktopComputer < Computer
end


class LaptopComputer < Computer

   def initialize(motherboard = Motherboard.new, drives = [])
      super(:lcd, motherboard, drives)
   end

end