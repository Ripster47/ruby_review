require "./employee.rb"
require "./reportable.rb"

class Manager < Employee
  include Reportable

  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def give_all_raises
      
    @employees.length.times do |index|     
      @employees[index].give_annual_raise
    end               
  end

  def fire_all_employees
    @employees.length.times do |index|
      @employees[index].active = false
    end
  end

end



