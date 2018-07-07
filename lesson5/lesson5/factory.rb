class Bear
  def to_s
    "I'm a bear toy"
  end
end

class Ball
  def to_s
    "I'm a ball toy"
  end
end

class Blocks
  def to_s
    "I'm a blocks toy"
  end
end

class Factory
  @@bear_count = 0
  @@ball_count = 0
  @@blocks_count = 0

  class << self
    def bear_count
      @@bear_count
    end

    def ball_count
      @@ball_count
    end

    def blocks_count
      @@blocks_count
    end

    def make_bear
      @@bear_count += 1
      Bear.new
    end

    def make_ball
      @@ball_count += 1
      Ball.new
    end

    def make_blocks
      @@blocks_count += 1
      Blocks.new
    end
  end
end
