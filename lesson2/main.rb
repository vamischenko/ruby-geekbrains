def get_color(n)
    colors = ['красный','оранжевый','жёлтый','зелёный','голубой','синий','фиолетовый']
    if not (1..7).include?(n)
        return nil
    end
    colors[n-1]
end

puts "случайный цвет %s" % get_color(rand(8))

print 'Введите номер цвета в радуге: '
n = gets.to_i
puts get_color(n) || 'неверный номер цвета!'

print 'Введите цвет в радуге: '
s = gets.encode("UTF-8").chomp.downcase
color = nil
for counter in 0..6
    if s == get_color(counter)
        color = counter 
    end
 end
 puts color || 'нет такого цвета!'