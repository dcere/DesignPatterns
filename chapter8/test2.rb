require 'compositecommand2.rb'
require 'filecommands2.rb'

c = CreateFile.new('file2.txt', "hi there world\n")
c.execute

cmds = CompositeCommand.new
cmds.add_command(CreateFile.new('file1.txt', "hello world\n"))
cmds.add_command(CopyFile.new('file1.txt', 'file2.txt'))
#cmds.add_command(DeleteFile.new('file1.txt'))

puts cmds.description

cmds.execute
cmds.unexecute
