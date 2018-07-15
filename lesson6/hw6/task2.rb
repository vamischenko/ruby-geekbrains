# Class
class Fridge
  def initialize
    @products = []
  end

  # Добавление продуктов в холодильник
  def user_add(product)
    @products << product
  end

  def user_show
    @products
  end

  # Получение информации о состоянии холодильника
  def master
    info
  end

  private

  def info
    rand(2).zero? ? 'Холодильник исправен' : 'Холодильник неисправен'
  end
end

f = Fridge.new
f.user_add('Колбаса')
f.user_add('Сосиськи')
f.user_add('Котлетки')
puts 'В холодильнике:', f.user_show, 'Информация для мастера:'
puts f.master
