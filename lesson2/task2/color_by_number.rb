def colors(number)
  color_list = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]

  return nil if number < 1 || number > color_list.length

  color_list[number - 1]
end

loop do
  puts 'Enter the color number (value from 1 to 7 inclusive)'
  color_number = gets.to_i

  color = colors color_number

  if color
    puts "The color with number #{color_number} is #{color}"
    return
  end

  puts "Wrong number, sorry. Please, try again\n\n"
end
