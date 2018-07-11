# Person
class Person
  private_class_method :new
  attr_accessor :f, :n, :o
end

# User
class User < Person
  public_class_method :new
end

# Admin
class Admin < Person
  public_class_method :new
end

# Moderator
class Moderator < Person
  public_class_method :new
end

a = Admin.new
a.f = 'Shashkin'
puts a.f
