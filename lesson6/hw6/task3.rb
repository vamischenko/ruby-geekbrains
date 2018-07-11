# Factory
class Factory
  def initialize
    @h = {}
    @h[:bear_cub] = BearCub.new
    @h[:ball] = Ball.new
    @h[:cube] = Cube.new
  end

  def build(type)
    @h[type]
  end
end

# Classes of toys
class BearCub
end

class Ball
end

class Cube
end

f = Factory.new
puts f.build(:bear_cub)
puts f.build(:ball)
puts f.build(:cube)
