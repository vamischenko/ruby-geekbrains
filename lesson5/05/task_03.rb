require_relative 'User'
class Group
  def initialize(*users)
    @users = []
    users.each { |user| @users << user }
  end

  def to_s
    @users.inject(' ') { |result, elem| result + elem.to_s + ', ' }
  end
end

user0 = User.new('Тимофеев', 'Тимофей', 'Тимофеевич')
user1 = User.new('Иванов', 'Иван', 'Иванович')
user2 = User.new('Сидоров', 'Тимофей', 'Иванович')

gr = Group.new(user0, user1, user2)
puts gr
