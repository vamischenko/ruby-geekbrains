class User
  attr_accessor :name, :value

  def initialize(name, value)
    @name = name
    @value = value
  end
end

user_names = ['Иванов', 'Петров', 'Сидоров', 'Алексеева', 'Казанцев', 'Антропов', 'Анисимова', 'Кузнецов', 'Соловьев', 'Кошкина']
users = Array.new(10) do |index|
  v = rand(5) + 1
  User.new(user_names[index], v)
end

user = users.max_by {|item| item.value}
puts " Имя - #{user.name}, оценка - #{user.value}"


