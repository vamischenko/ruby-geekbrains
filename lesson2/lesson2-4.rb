def colors(colName)
  if colName == "red" or colName == "красный"
    puts 1;
  elsif colName == "orange" or colName == "оранжевый"
    puts 2;
  elsif colName == "yellow" or colName == "желтый"
    puts 3;
  elsif colName == "green" or colName == "зеленый"
    puts 4;
  elsif colName == "blue" or colName == "синий"
    puts 5;
  elsif colName == "white-blue" or colName == "голубой"
    puts 6;
  elsif colName == "purple" or colName == "фиолетовый"
    puts 7;
  else
    puts nil;
  end
end

#4 задание
colors(ARGV[0].to_s.encode('utf-8'))