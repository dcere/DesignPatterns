require 'bankaccount3.rb'
require 'virtualaccountproxy3.rb'


account = BankAccount.new(100)
account.deposit(50)
account.withdraw(10)
puts "Final balance: #{account.balance}"


proxy = VirtualAccountProxy.new()
proxy.deposit(50)
proxy.withdraw(10)
puts "Final balance: #{proxy.balance}"
