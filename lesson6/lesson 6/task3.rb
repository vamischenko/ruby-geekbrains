##
# Task3
class Factory
  ##
  # Class BearCube
  class BearCube
    def initialize
      puts 'Медвежонок создан'
    end
  end
  ##
  # Class Cube
  class Cube
    def initialize
      puts 'Кубик создан'
    end
  end
  ##
  # Class Ball
  class Ball
    def initialize
      puts 'Мяч создан'
    end
  end

  def build(param)
    mas = %i[bear_cube cube ball]
    if param == mas[0]
      BearCube.new
    elsif param == mas[1]
      Cube.new
    elsif param == mas[2]
      Ball.new
    else
      puts 'Такого типа игрушек не существует'
    end
  end
end

factory = Factory.new
factory.build(:cube)
factory.build(:bear_cube)
factory.build(:ball)
factory.build(:car)
