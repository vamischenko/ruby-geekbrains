class User
  attr_accessor :first_name, :last_name, :surname

  def initialize(last_name, first_name, surname)
    @last_name = last_name
    @first_name = first_name
    @surname = surname
  end

  def full_name
    "#{@last_name} #{@first_name} #{@surname}"
  end

  def args
    [@last_name, @first_name, @surname]
  end

  def +(other)
    full_name + other
  end

  def to_s
    full_name
  end
end
