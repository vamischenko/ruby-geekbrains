# task 1
#
## base class
class Person
  attr_accessor :name, :second_name, :last_name

  private

  def set_fio(name, second_name, last_name)
    @name = name
    @second_name = second_name
    @last_name = last_name
  end
end

# class User
class User < Person
  def initialize(name, second_name, last_name)
    set_fio(name, second_name, last_name)
  end

  def out_fio
    "#{name} #{second_name} #{last_name}"
  end
end

# class Admin
class Admin < Person
  def initialize(name, second_name, last_name)
    set_fio(name, second_name, last_name)
  end

  def out_fio
    "#{name} #{second_name} #{last_name}"
  end
end

# class Moderator
class Moderator < Person
  def initialize(name, second_name, last_name)
    set_fio(name, second_name, last_name)
  end

  def out_fio
    "#{name} #{second_name} #{last_name}"
  end
end

# error example
# per = Person.set_fio('a', 'a', 'a')
u = User.new('a', 'a', 'a')
puts u.out_fio

a = Admin.new('a', 'a', 'a')
puts a.out_fio

m = Moderator.new('a', 'a', 'a')
puts m.out_fio
