mas1 = %w[red orange yellow green gray indigo violet]
mas2 = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]
puts 'Первый массив:'
p mas1
puts 'Второй массив'
p mas2
mas1 = mas1.map(&:to_sym)
mas2 = mas1.zip(mas2).to_h
puts 'Получившийся хеш:'
p mas2
