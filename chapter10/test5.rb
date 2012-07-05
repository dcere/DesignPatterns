require 'bankaccount5.rb'
require 'accountproxy5.rb'
require 'accountprotectionproxy5.rb'
require 'virtualaccountproxy5.rb'

account = BankAccount.new(100)
account.deposit(50)
account.withdraw(10)
puts "Final balance: #{account.balance}"


# Account Proxy
proxy = AccountProxy.new( BankAccount.new(100) )
proxy.deposit(50)
proxy.withdraw(10)
puts "Final balance (account): #{proxy.balance}"

# Account Protection Proxy
proxy = AccountProtectionProxy.new(account, "david")    # Run 'whoami' to see who you are
proxy.deposit(50)
proxy.withdraw(10)
puts "Final balance (account protection): #{proxy.balance}"

# Virtual Account Proxy
proxy = VirtualAccountProxy.new{ BankAccount.new(10) }
proxy.deposit(50)
proxy.withdraw(10)
puts "Final balance (virtual account): #{proxy.balance}"