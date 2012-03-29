require 'fileutils'
require 'command1.rb'

class CreateFile < Command

   def initialize(path, contents)
      super("Create file: #{path}")
      @path = path
      @contents = contents
   end
   
   def execute
      f = File.open(@path, 'w')
      f.write(@contents)
      f.close
   end
   
   def unexecute
      File.delete(@path)
   end
   
end


class DeleteFile < Command

   def initialize(path)
      super("Delete file: #{path}")
      @path = path
   end
   
   def execute
      if File.exists?(@path)
         @contents = File.read(@path)
      end
      f = File.delete(@path)
   end
   
   def unexecute
      if @contents
         f = File.open(@path, 'w')
         f.write(@contents)
         f.close
      end
   end
   
end


class CopyFile < Command

   def initialize(source, target)
      super("Copy file: #{source} to #{target}")
      @source = source
      @target = target
   end
   
   def execute
      if File.exists?(@target)
         @contents = File.read(@target)
      end
      FileUtils.copy(@source, @target)
   end
   
   def unexecute
      if @contents
         f = File.open(@target, 'w')
         f.write(@contents)
         f.close
      else
         File.delete(@target)
      end
   end
   
end
