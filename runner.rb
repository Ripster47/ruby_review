require "./employee.rb"
require "./manager.rb"
require "./intern.rb"

employee_1 = Employee.new(
                          first_name: "Nick", 
                          last_name: "Cage", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Julia", 
                          last_name: "Andrews", 
                          salary: 80000, 
                          active: true
                          )

manager = Manager.new(
                      first_name: "Grace",
                      last_name: "Hopper",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )

intern_1 = Intern.new(
                      first_name: "Jimmy",
                      last_name: "Olsen",
                      salary: 25000,
                      active: true
                      )
manager.print_info
employee_1.print_info
employee_2.print_info
intern_1.print_info