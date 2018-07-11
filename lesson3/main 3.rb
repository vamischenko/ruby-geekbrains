puts 'Task1'
names = %w[Иванов Петров Сидоров Алексеева Казанцев Антропов Анисимова Кузнецов Соловьев Кошкина]
puts names.sort.to_s

puts "\nTask2"
random_items = (0..9).map { Random.rand(0..99) }
puts random_items.to_s
puts random_items.minmax.to_s

class User
  attr_accessor :name
  attr_accessor :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def to_s
    "User #{@name} with grade #{@grade}"
  end
end

puts "\nTask3"
puts 'Enter the names and grades for 3 users (Ex. John 3, Max 5, Bill 4)'
users = gets.force_encoding('utf-8').split(',').map do |item|
  name, grade = item.split(' ')
  User.new name, grade.to_i
end
puts users

puts "\nTask4"
users = (0..4).map { |num| User.new "User#{num}", Random.rand(1..5) }
puts 'All users'
puts users
puts "\nUser with max grade"
puts(users.inject { |acc, user| user.grade > acc.grade ? user : acc })

class Point
  attr_accessor :x
  attr_accessor :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def distance_to(point)
    x_diff = point.x - @x
    y_diff = point.y - @y

    Math.sqrt(x_diff**2 + y_diff**2).round(2)
  end

  def to_s
    "(#{@x.round(2)}, #{@y.round(2)})"
  end
end

puts "\nTask5"
points = (0..1).map { Point.new Random.rand(100.0), Random.rand(100.0) }
puts 'Points'
puts points
puts "Distance between it: #{points[0].distance_to(points[1])}"
