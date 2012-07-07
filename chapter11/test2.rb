require 'simplewriter2'
require 'writerdecorator2'

writer = NumberingWriter.new(SimpleWriter.new("final.txt"))
writer.write_line("Hello out there")

writer = CheckSummingWriter.new(TimeStampingWriter.new(NumberingWriter.new(SimpleWriter.new("final2.txt"))))
writer.write_line("Hello out there")