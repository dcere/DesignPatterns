require 'expression'
require 'methods'
require 'datasource4'

class Backup

   attr_accessor :backup_directory, :interval
   attr_reader   :data_sources

   def initialize
      @data_sources = []
      @backup_directory = '/home/david/backup'
      @interval = 60
      yield(self) if block_given?
      PackRat.instance.register_backup(self)
   end


   def backup(dir, find_expression = All.new)
      @data_sources << DataSource.new(dir, find_expression)
   end


   def to(backup_directory)
      @backup_directory = backup_directory
   end


   def interval(minutes)
      @interval = minutes
   end


   def run
      while true
         this_backup_dir = Time.new.ctime.tr(" :", "_")
         this_backup_path = File.join(backup_directory, this_backup_dir)
         @data_sources.each { |source| source.backup(this_backup_path) }
         sleep(@interval * 60)
      end
   end

end