require 'simplewriter3'
require 'writerdecorator3'

# Wrapping methods
writer = SimpleWriter.new("out.txt")
class << writer

   alias old_write_line write_line

   def write_line(line)
      old_write_line("#{Time.new}: #{line}")
   end

end

writer.write_line("Hello out there")


# Decorating with modules
writer = SimpleWriter.new("out2.txt")
writer.extend(NumberingWriter)
writer.extend(CheckSummingWriter)

writer.write_line("Hello!")