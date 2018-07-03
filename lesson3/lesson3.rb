# encoding: utf-8

# 1. Создайте массив из 10 строк с именами пользователей
# (Иванов, Петров, Сидоров, Алексеева, Казанцев, Антропов, Анисимова, Кузнецов, Соловьев, Кошкина).
# Выведите список пользователей в консоль в алфавитном порядке.

words = ['Иванов', 'Петров', 'Сидоров', 'Алексеева', 'Казанцев', 'Антропов', 'Анисимова', 'Кузнецов', 'Соловьев', 'Кошкина']

puts words.sort

# 2. Создайте массив из 10 элементов со случайными числами от 0 до 99.
# Найдите максимальное и минимальное значение этого массива.

massiv = Array.new(10) {|i| rand(0..99)}
print massiv
puts ' '
print 'Max = ', massiv.max, ' Min = ', massiv.min

# 3 задание
class User
  def init(first, mark)
    @firstName = first
    @mark = mark
  end

  def set_user (first, mark)
    @firstName = first
    @mark = mark
  end
end

user1 = User.new
user2 = User.new
user3 = User.new

puts 'Первый'
name1 = gets.chomp
puts 'Его оценка'
mark1 = gets.chomp

user1.set_user(name1, mark1)

puts 'Второй'
name2 = gets.chomp
puts 'Его оценка'
mark2 = gets.chomp

user2.set_user(name2, mark2)

puts 'Третий'
name3 = gets.chomp
puts 'Его оценка'
mark3 = gets.chomp

user3.set_user(name3, mark3)

massiv_users = [user1, user2, user3]

# 4 задание
class User1
  @@array = Array.new
  attr_accessor :name, :mark

  def self.all_instances
    @@array
  end

  def initialize()
    @name = name
    @ocenka = rand(1..5)
    @@array << self
  end

  def get_mark
    return @ocenka
  end
end

users = User1.new
users.sort_by(users.get_mark)
puts users.max_by {|x| users.get_mark}