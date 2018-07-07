require_relative './hello'
require_relative './user'
require_relative './group'
require_relative './settings'
require_relative './factory'

puts 'Task1'
hello = Hello.new 'world'
puts hello.say
puts hello

puts "\nTask2"
user = User.new 'Lastname', 'FirstName', 'Surname'
puts user.full_name
puts user.args.to_s
puts user + ' is an engineer'

puts "\nTask3"
users = Array.new(3) { |i| User.new "Lastname#{i}", "Firstname#{i}", "Surname#{i}" }
group = Group.new users[0], users[1], users[2]
puts group

puts "\nTask4"
settings = Settings.new do |s|
  s.hello = 'world'
  s.num = 42
  s.bool = true
end

puts settings.hello
puts settings.num
puts settings.bool

begin
  puts settings.undefined_method
rescue
  puts 'Undefined method catched!'
end

puts "\nTask5"
bear_toys = Array.new(3) { Factory.make_bear }
ball_toys = Array.new(4) { Factory.make_ball }
blocks_toys = Array.new(2) { Factory.make_blocks }

puts bear_toys.map(&:to_s).to_s
puts ball_toys.map(&:to_s).to_s
puts blocks_toys.map(&:to_s).to_s

puts "\nBear toys: #{Factory.bear_count}, ball toys: #{Factory.ball_count}, blocks toys: #{Factory.blocks_count}"
