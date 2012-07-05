require 'bankaccount4.rb'
require 'virtualaccountproxy4.rb'


account = BankAccount.new(100)
account.deposit(50)
account.withdraw(10)
puts "Final balance: #{account.balance}"


proxy = VirtualAccountProxy.new{ BankAccount.new(10) }
proxy.deposit(50)
proxy.withdraw(10)
puts "Final balance: #{proxy.balance}"
