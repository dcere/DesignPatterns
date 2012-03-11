require 'subject4.rb'
require 'employee4.rb'

payroll = Payroll.new
fred = Employee.new('Fred', 'Crane Operator', 30000)
fred.add_observer(payroll)
fred.salary = 35000

tax_man = TaxMan.new
fred.add_observer(tax_man)
fred.salary = 40000
