def get_color(n)
  colors = %W[\u043A\u0440\u0430\u0441\u043D\u044B\u0439 \u043E\u0440\u0430\u043D\u0436\u0435\u0432\u044B\u0439 \u0436\u0451\u043B\u0442\u044B\u0439 \u0437\u0435\u043B\u0451\u043D\u044B\u0439 \u0433\u043E\u043B\u0443\u0431\u043E\u0439 \u0441\u0438\u043D\u0438\u0439 \u0444\u0438\u043E\u043B\u0435\u0442\u043E\u0432\u044B\u0439]
  return nil unless (1..7).cover?(n)
  colors[n - 1]
end

puts format("\xD1\x81\xD0\xBB\xD1\x83\xD1\x87\xD0\xB0\xD0\xB9\xD0\xBD\xD1\x8B\xD0\xB9 \xD1\x86\xD0\xB2\xD0\xB5\xD1\x82 %s", get_color(rand(8)))

print 'Введите номер цвета в радуге: '
n = gets.to_i
puts get_color(n) || 'неверный номер цвета!'

print 'Введите цвет в радуге: '
s = gets.encode('UTF-8').chomp.downcase
color = nil
for counter in 0..6
  color = counter if s == get_color(counter)
end
puts color || 'нет такого цвета!'
