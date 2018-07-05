array = Array.new(10) {|index| rand(100)}

puts "Максимальное значение = %d" % array.max
puts "Минимальное значение = %d" % array.min
