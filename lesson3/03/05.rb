class Point
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def distance(p1)
    dx = x - p1.x
    dy = y - p1.y
    Math.sqrt(dx**2 + dy**2)
  end
end

p1 = Point.new(0, 0)
p2 = Point.new(2, 2)
puts p1.distance(p2)
