require 'message'
require 'gateway'

m = Message.new('david', 'file:////tmp/bar', 'File message')
mg = MessageGateway.new
a = mg.adapter_for(m)
a.send(m)