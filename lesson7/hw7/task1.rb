##
# Task 1
puts 'Исходный hash'
hash = { red: 'красный', orange: 'оранжевый', yellow: 'желтый', green: 'зеленый', blue: 'голубой', indigo: 'синий', violet: 'фиолетовый' }
puts hash
puts 'Измененный hash'
hash = hash.map { |i, e| [e.to_s, i.to_s] }.to_h
puts hash
