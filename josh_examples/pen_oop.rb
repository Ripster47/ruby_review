class Pen
  attr_reader :color, :cap_on

  def initialize(input_color)
    @color = input_color
    @cap_on = true
  end

  def remove_cap
    @cap_on = false
  end

  def place_cap
    @cap_on = true
  end
end

class Cup
  def initialize
    @contents = []
  end

  def empty?
    @contents == []
  end

  def full?
    @contents != []
  end

  def add_item(new_item)
    @contents << new_item
  end

  def how_many_items
    @contents.length
  end

  def contains_green_item?
    found_green = false

    @contents.each do |item|
      if item.color == "Green"
        found_green = true
      end
    end

    found_green
  end
end

orange_pen = Pen.new("Orange")
green_pen = Pen.new("Green")
yellow_pen = Pen.new("Yellow")

cup = Cup.new

p orange_pen.class
p cup.class
p "bob".class