def colors(number)
  color_list = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]

  return nil if number < 1 || number > color_list.length

  color_list[number - 1]
end

def random_color
  colors(Random.rand(1..7))
end

puts random_color
