 class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{ @first_name } #{ @last_name } makes #{ @salary } a year. He is currently working: #{ @active }."
  end

  def give_annual_raise
    @salary *= 1.05
  end

  def change_status(new_status)
    @active = new_status
  end

end

class Manager < Employee

  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending report..."
    # code to send report
    puts "Email sent."
  end

  def give_all_raises
    @employees.length.times do |index|
      @employees[index].give_annual_raise
    end
  end

  def fire_all_employees
    @employees.length.times do |index|
      @employees[index].change_status(false)
    end
  end

end


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


employee_1.print_info
employee_2.print_info
manager.give_all_raises
employee_1.print_info
employee_2.print_info
manager.fire_all_employees
employee_1.print_info
employee_2.print_info

