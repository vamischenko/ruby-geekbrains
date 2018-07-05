def get_color_number(color)
  color_list = {
      'красный' => 1,
      'оранжевый' => 2,
      'желтый' => 3,
      'зеленый' => 4,
      'голубой' => 5,
      'синий' => 6,
      'фиолетовый' => 7
  }

  color_list[color] if color_list.key? color
end

loop do
  puts 'Enter the rainbow color name'
  color = gets.downcase.chomp

  color_number = get_color_number color

  if color_number
    puts "The color #{color} has number #{color_number}"
    return
  end

  puts "Wrong color name, sorry. Please, try again\n\n"
end
