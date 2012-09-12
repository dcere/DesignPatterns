require 'singleton'

class PackRat

   include Singleton

   def initialize
      @backups = []
   end


   def register_backup(backup)
      @backups << backup
      puts "Registered #{backup}"
   end


   def run
      threads = []
      @backups.each do |backup|
         threads << Thread.new(backup.run)
      end
      threads.each { |t| t.join }
   end

end