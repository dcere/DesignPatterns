require 'expression'
require 'methods'

require 'backup3'
require 'datasource3'


def backup(dir, find_expression = All.new)
   Backup.instance.data_sources << DataSource.new(dir, find_expression)
end


def to(backup_directory)
   Backup.instance.backup_directory = backup_directory
end


def interval(minutes)
   Backup.instance.interval = minutes
end


eval(File.read('backup3.pr'))
Backup.instance.run