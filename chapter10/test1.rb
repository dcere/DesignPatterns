require 'bankaccount1.rb'
require 'bankaccountproxy1.rb'


account = BankAccount.new(100)
account.deposit(50)
account.withdraw(10)
puts "Final balance: #{account.balance}"


proxy = BankAccountProxy.new(account)
proxy.deposit(50)
proxy.withdraw(10)
puts "Final balance: #{proxy.balance}"