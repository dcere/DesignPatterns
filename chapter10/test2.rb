require 'bankaccount2.rb'
require 'accountprotectionproxy2.rb'


account = BankAccount.new(100)
account.deposit(50)
account.withdraw(10)
puts "Final balance: #{account.balance}"


proxy = AccountProtectionProxy.new(account, "david")    # Run 'whoami' to see who you are
proxy.deposit(50)
proxy.withdraw(10)
puts "Final balance: #{proxy.balance}"

proxy = AccountProtectionProxy.new(account, "not-david")
proxy.deposit(50)
proxy.withdraw(10)
puts "Final balance: #{proxy.balance}"
