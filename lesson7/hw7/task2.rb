##
# Task 2
mas = %w[first second third]
puts 'Исхоный массив'
p mas
mas = mas.map.with_index { |i, e| [i.to_sym, "#{i[0].capitalize + i[i.size - 2] + i[i.size - 1]} (#{e + 1})"] }.to_h
puts 'Требуемый хеш'
p mas
