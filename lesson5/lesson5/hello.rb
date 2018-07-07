class Hello
  def initialize(arg)
    @arg = arg
  end

  def say
    to_s
  end

  def to_s
    "Hello #{@arg}!"
  end
end
