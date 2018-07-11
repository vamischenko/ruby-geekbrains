# Реализуйте модуль Fivable, включение которого в класс будет разрешать создание только пяти объектов этого класса.
# При 5 объектах метод new становится private
module Fivable
  @@n = 0

  def initialize
    @@n += 1
    if @@n == 5
      puts 'Создано 5 объктов данного класса, и больше вы создать не сможете'
      self.class.private_class_method :new
    end
  end
end

class Obj
  include Fivable
end

Obj.new
Obj.new
Obj.new
Obj.new
Obj.new
Obj.new
