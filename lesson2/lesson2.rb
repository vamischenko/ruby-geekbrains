def colors(colNumber)
  if colNumber == 1
    puts "red";
  elsif colNumber == 2
    puts "orange";
  elsif colNumber == 3
    puts "yellow";
  elsif colNumber == 4
    puts "green";
  elsif colNumber == 5
    puts "blue";
  elsif colNumber == 6
    puts "white-blue";
  elsif colNumber == 7
    puts "purple";
  else
    puts nil;
  end
end

#first and third task (1 и 3 задание)
colors(ARGV[0].to_i)

#second (второе)
randomNumber = rand(10)
puts "Случайное число - #{randomNumber}"
colors(randomNumber)