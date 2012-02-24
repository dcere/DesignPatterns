# Hook methods II

class Report

   def initialize
      @title = 'Monthly Report'
      @text = [ 'Things are going', 'really, really well']
   end
   
   def output_report
      output_start
      output_head
      @text.each do |line|    # Changes!!
         output_line(line)
      end
      output_end
   end
   
   def output_start           # Hook method
   end
   
   def output_head
      output_line(@title)     # Hook method with some implementation
   end
   
   def output_body_start      # Hook method
   end
   
   def output_body            # Hook method (now without implementation)
   end
   
   def output_line(line)
      raise "Called abstract method: output_line"
   end
   
   def output_body_end        # Hook method
   end
   
   def output_end             # Hook method
   end
   
end


class HTMLReport < Report
   
   def output_start  
      puts("<html>")
   end
   
   def output_head
      puts("   <head>")
      puts("   <title>#{@title}</title>")
      puts("   </head>")
   end
   
   def output_body_start
      puts("   <body>")
   end
   
   def output_line(line)
      puts("      <p>#{line}</p>")
   end
   
   def output_body_end
      puts("   </body>")
   end
   
   def output_end
      puts("</html>")
   end
   
end


class PlainTextReport < Report

   # We do not override the hook methods

   def output_head
      puts("***#{@title}***")
      puts
   end
   
   def output_line(line)
      puts(line)
   end
   
end
