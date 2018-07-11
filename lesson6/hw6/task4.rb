# Класс судна. В конструктор передается имя судна и массив параметров корабля
class Boat
  def initialize(name, mods)
    @name = name
    @mod = mods
  end

  def to_s
    s = ''
    @mod.each { |n| s += n + ', ' }
    s[s.length - 2] = ''
    "Название корабля: #{@name} \nПараметры корабля: #{s}\n\n"
  end
end

class UpBoat < Boat
  def to_s
    "Тип корабля: надводный \n" + super
  end
end

class DownBoat < Boat
  def to_s
    "Тип корабля: подводный \n" + super
  end
end

puts DownBoat.new('атомная подводная лодка', %w[ракеты торпеды])
puts UpBoat.new('сухогруз для перевозки зерна', %w[трюм кран])
puts UpBoat.new('контейнеровоз', %w[кран])
puts UpBoat.new('нефтяной танкер', %w[трюм])
puts UpBoat.new('ракетный крейсер', %w[ракеты])
puts UpBoat.new('военный транспорт', %w[ракеты трюм кран])