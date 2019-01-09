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
    puts "#{ @first_name } #{ @last_name } makes #{ @salary } a year." 
  end

  def give_annual_raise
    @salary *= 1.05
  end

end

class Manager < Employee

  def initialize(input_options)
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending report..."
    #code to send report
    puts "Report Sent!"
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
                      active: true
                      employees: [ employee_1, employee_2 ]
                      )

employee_1.print_info
employee_2.print_info
manager.print_info
manager.send_report


  # def first_name  #reader method
  #   @first_name
  # end

  # def last_name  #reader method
  #   @last_name
  # end

  # def salary        #No longer need these because the attr_reader method takes their place
  #   @salary
  # end

  # def active
  #   @active
  # end

  # def active=(new_active_status)  #writer method
  #   @active = new_active_status   #no longer need this because attr_writer takes its place
  # end

