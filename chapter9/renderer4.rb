class Renderer

   def render(text_object)
      text =  text_object.text
      size =  text_object.size_inches
      color = text_object.color
      
      # render the text
      puts "Rendering..."
      puts "  text:  #{text}"
      puts "  size:  #{size}"
      puts "  color: #{color}"
   end
   
end
