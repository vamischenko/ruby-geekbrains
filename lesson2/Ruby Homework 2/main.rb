def colors(x)
  case x
  when 1
    "Красный"
  when 2
    "Оранжевый"
  when 3
    "Желтый"
  when 4
    "Зеленый"
  when 5
    "Голубой"
  when 6
    "Синий"
  when 7
    "Фиолетовый"
  end
end

begin
  print "Введите номер цвета (1..7): "
  a = gets.to_i
  if (1..7) === a
    puts "", "Ваш цвет: #{colors(a)}", ""
  else
    puts "", "nil", ""
    raise RuntimeError, "Ошибка, неправильно введен номер цвета"
  end

rescue RuntimeError => e
  puts "", e.message, ""
ensure
  rand_color = rand(1..7)
  puts "Рандомный цвет: #{colors(rand_color)}"
end