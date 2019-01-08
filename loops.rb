
array = ["jim", "sam", "jane", "spot", "Giraldo Mustafar"]


array.length.times do |index|

  dog = array[index]
  
  p dog

end

puts "================="

array.each do |dog|

  p dog

end

count = 10

while count > 0
  
  puts count

  count -= 1

end

count = 10

until count > 0
  
  puts count

  count -= 1

end

