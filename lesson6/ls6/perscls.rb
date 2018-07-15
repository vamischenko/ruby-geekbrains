class Person
  attr_accessor :name, :sname, :mname
  def initialize(fio)
    personfio = fio.to_s.split
    @name = personfio[0]
    @sname = personfio[1]
    @mname = personfio[2]
  end
  private_class_method :new
end

class User < Person
  public_class_method :new
end

class Moderator < User
end

class Admin < Moderator
end
