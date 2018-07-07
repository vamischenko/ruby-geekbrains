class Fabrica

  def initialize(type = 1)
    @@teddybear_cnt ||= 0;
    @@ball_cnt ||= 0;
    @@cubes_cnt ||= 0;
  end

  def get_teddybears(n = 1)
    @@teddybear_cnt += n
  end

  def get_balls(n = 1)
    @@ball_cnt += n
  end

  def get_cubes(n = 1)
    @@cubes_cnt += n
  end

  def puts_cnts
    puts "teddy bears = #{@@teddybear_cnt}"
    puts "balls = #{@@ball_cnt}"
    puts "cubes = #{@@cubes_cnt}"
  end
end

f = Fabrica.new
f.get_cubes(12)
f.get_balls(2)
f.get_teddybears(3)
f.puts_cnts