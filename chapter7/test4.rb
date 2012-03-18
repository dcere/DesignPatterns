require 'account4.rb'
require 'portfolio4.rb'

a1 = Account.new("a1",10)
a2 = Account.new("a2",100)
a3 = Account.new("a3",1000)

my_portfolio = Portfolio.new()
my_portfolio.add_account(a1)
my_portfolio.add_account(a2)
my_portfolio.add_account(a3)

puts "Accounts over 2000?"
result = my_portfolio.any? { |account| account.balance > 2000 }
puts result

puts "Accounts at 10 or over?"
result = my_portfolio.any? { |account| account.balance >= 10 }
puts result
