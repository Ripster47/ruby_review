


class Sheep

  @@count = 0     #class variable exists within class and keeps track of each new instance of a class

  def initialize
    @@count += 1
    @id = @@count
    @awake_percentage = rand(1..100) #range makes random number include first and last number
  end

  def self.how_many
    puts "There are #{@@count} sheep." #this is a class method, .self makes this method applicable to the class "Sheep" instead of the instances created by the class.
  end

  def class_count
    @@count
  end

  def is_awake?
    awake_percentage > 50
  end


  private 

  def awake_percentage
    @awake_percentage
  end

end

sheep = Sheep.new
p sheep.is_awake?


