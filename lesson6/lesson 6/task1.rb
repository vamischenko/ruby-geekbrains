##
# Task 1
class Person
  attr_accessor :name, :family, :patronymic
  def initialize(family, name, patronymic)
    @name = name
    @family = family
    @patronymic = patronymic
  end

  def fio
    @family + ' ' + @name + ' ' + @patronymic
  end
  private_class_method :new
end
##
# Class User
class User < Person
  public_class_method :new
end
##
# Class Admin
class Admin < Person
  public_class_method :new
end
##
# Class Moderator
class Moderator < Person
  public_class_method :new
end

user = User.new('Sidorov', 'Sidr', 'Sidorovich')
admin = Admin.new('Ivanov', 'Ivan', 'Ivanovich')
moderator = Moderator.new('Petrov', 'Petr', 'Petrovich')
puts user.fio
puts admin.fio
puts moderator.fio
