class User
  def initialize(fname = '', name = '', sname = '')
    @name = name
    @sname = sname
    @fname = fname
  end

# проще было бы
#	attr_accessor :name, :sname, :fname

  def name(n)
    @name = n
  end

  def name
    @name
  end

  def sname(n)
    @sname = n
  end

  def sname
    @sname
  end

  def fname(n)
    @fname = n
  end

  def fname
    @fname
  end

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
