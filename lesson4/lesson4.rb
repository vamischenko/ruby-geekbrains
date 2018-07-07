
# task №1
massiv = %w[cat dog tiger]
for word in massiv
  print word + ' ' if word.scan('t')
end
puts ''
# task №2
puts massiv
for word in massiv
  print word.capitalize + ' '
end

for word in massiv
  print word + ' '
end

# task №3
class User
  attr_accessor :name, :value

  def initialize(name, value)
    @name = name
    @value = value
  end
end

users = Array.new(3) do |_index|
  print 'Введите имя '
  s = gets.encode('UTF-8').chomp
  print 'Введите оценку '

  while (gets.to_i >= 1) && (gets.to_i <= 5)
    v = gets.to_i
  end
  User.new(s, v)
end

puts '==================='
users.map do |item|
  puts " Имя: #{item.name}, оценка: #{item.value}."
end
