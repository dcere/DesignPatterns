require 'encrypter1.rb'
require 'stringioadapter1.rb'

#reader = File.open('message1.txt')
reader = StringIOAdapter.new("On the first light of the fifth day, at dawn look to the east.")
writer = File.open('message1.encrypted', 'w')
encrypter = Encrypter.new('my secret key')
encrypter.encrypt(reader, writer)
