class Employee

   include Subject

   attr_reader :name, :address
   attr_reader :salary
   
   def initialize(name, title, salary)
      super()
      @name = name
      @title = title
      @salary = salary
   end
   
   def salary=(new_salary)
      @salary = new_salary
      notify_observers
   end
   
end


class Payroll
   
   def update(changed_employee)
      puts "Cut a new check for #{changed_employee.name}"
      puts "Their salary is now #{changed_employee.salary}"
   end
   
end


class TaxMan

   def update(changed_employee)
      puts "Send #{changed_employee.name} a new tax bill"
   end
   
end
