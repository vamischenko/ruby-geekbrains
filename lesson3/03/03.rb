class User
    attr_accessor :name, :value
    def initialize(name, value)
        @name = name
        @value = value
    end
end


users = Array.new(3) do |index|
    print 'Введите имя '
    s = gets.encode('UTF-8').chomp
    print 'Введите оценку '
    v = gets.to_i
    User.new(s,v)
end

puts '==================='
users.map do |item|
    puts " Имя: #{item.name}, оценка: #{item.value}."
end
