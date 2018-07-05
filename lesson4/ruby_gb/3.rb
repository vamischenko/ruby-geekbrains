class User
  attr_accessor :name, :grade

  def create
    print 'Назовите пользователя: '
    self.name = gets.chomp
    until (1..5).cover?(grade)
      print 'Введите оценку от 1 до 5:  '
      self.grade = gets.to_i
    end
  end
end

u = User.new
u.create

puts "Создан пользователь с именем - #{u.name}, и оценкой - #{u.grade}"
