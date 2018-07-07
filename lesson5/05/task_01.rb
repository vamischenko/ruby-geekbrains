#1. Создайте класс Hello, при создании объекта которого конструктору можно было бы передавать
# параметр Hello.new('world'). При вызове метода say этого объекта hello.say или при выводе
# объекта методом puts должна выводиться фраза 'Hello world!', где подстрока world задается
# параметром конструктора.
class Hello

  def initialize(name = 'world')
    @name = name
  end

  def say
    puts to_s
  end

  def to_s
    "Hello #{@name}!"
  end
end

hello = Hello.new()
hello.say
puts hello
hello = Hello.new('John')
hello.say
puts hello