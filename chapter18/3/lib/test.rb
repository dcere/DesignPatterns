require 'message'
require 'gateway'

# First the unauthorized
m = Message.new('david', 'file:////tmp/bar', 'File message')
mg = MessageGateway.new
mg.process_message(m)

# Then the authorized
m = Message.new('russ.olsen', 'file://russolsen.com', 'Russ\' blessing')
mg = MessageGateway.new
mg.process_message(m)      # Raises No such file or directory -  (Errno::ENOENT)