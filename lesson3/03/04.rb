class User
  attr_accessor :name, :value

  def initialize(name, value)
    @name = name
    @value = value
  end
end

user_names = %W[\u0418\u0432\u0430\u043D\u043E\u0432 \u041F\u0435\u0442\u0440\u043E\u0432 \u0421\u0438\u0434\u043E\u0440\u043E\u0432 \u0410\u043B\u0435\u043A\u0441\u0435\u0435\u0432\u0430 \u041A\u0430\u0437\u0430\u043D\u0446\u0435\u0432 \u0410\u043D\u0442\u0440\u043E\u043F\u043E\u0432 \u0410\u043D\u0438\u0441\u0438\u043C\u043E\u0432\u0430 \u041A\u0443\u0437\u043D\u0435\u0446\u043E\u0432 \u0421\u043E\u043B\u043E\u0432\u044C\u0435\u0432 \u041A\u043E\u0448\u043A\u0438\u043D\u0430]
users = Array.new(10) do |index|
  v = rand(1..5)
  User.new(user_names[index], v)
end

user = users.max_by(&:value)
puts " Имя - #{user.name}, оценка - #{user.value}"
