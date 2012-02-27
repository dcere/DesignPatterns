class Formatter

   def ouput_report( title, text )
      raise "Abstract method called"
   end

end


class HTMLFormatter < Formatter

   def output_report(context)
      puts("<html>")
      puts("   <head>")
      puts("   <title>#{context.title}</title>")      # Changes
      puts("   </head>")
      puts("   <body>")
      context.text.each do |line|                     # Changes
         puts("      <p>#{line}</p>")
      end
      puts("   </body>")
      puts("</html>")
   end
   
end


class PlainTextFormatter < Formatter

   def output_report(context)
      puts("***#{context.title}***")                  # Changes
      context.text.each do |line|                     # Changes
         puts(line)
      end
   end
   
end
