class User
  def initialize(fname = '', name = '', sname = '')
    @name = name
    @sname = sname
    @fname = fname
  end

  # проще было бы
  #  attr_accessor :name, :sname, :fname

  def name(n)
    @name = n
  end

  attr_reader :name

  def sname(n)
    @sname = n
  end

  attr_reader :sname

  def fname(n)
    @fname = n
  end

  attr_reader :fname

  def full_name
    "#{fname} #{name} #{sname}"
  end

  def to_s
    full_name
  end

  def to_str
    full_name
  end

  def to_arr
    full_name.split
  end
end
