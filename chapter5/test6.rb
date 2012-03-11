require 'subject6.rb'
require 'employee6.rb'


fred = Employee.new('Fred', 'Crane Operator', 30000)
fred.add_observer do |changed_employee|
   puts "Cut a new check for #{changed_employee.name}"
   puts "Their salary is now #{changed_employee.salary}"
end
fred.salary = 35000


fred.add_observer do |changed_employee|
   puts "Send #{changed_employee.name} a new tax bill"
end
fred.salary = 40000
