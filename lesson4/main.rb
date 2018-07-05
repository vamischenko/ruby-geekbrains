arr = %w[cat dog tiger]

puts 'Task1'
puts arr.select {|item| item.include? 't'}.to_s

puts "\nTask2"
puts arr
         .map {|item| item.upcase}
         .map {|item| item.downcase}
         .to_s

class User
  attr_accessor :name
  attr_accessor :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def to_s
    "User #{@name} with grade #{@grade}"
  end
end

puts "\nTask3"
puts 'Enter username and grade (Ex. John 5)'
loop do
  name, raw_grade = gets.chomp.split(/\s+/)
  grade = raw_grade.to_i

  unless (1..5).include? grade
    puts 'Wrong grade, try again'
    next
  end

  user = User.new name, grade
  puts user
  break
end

puts "\nTask4"
puts %i(first second third)
         .each_with_index
         .inject({}) {|acc, (item, index)| acc.merge({item => index + 1})}


def my_map(src_arr = [], &block)
  dest_arr = []

  src_arr.each do |item|
    dest_arr << (block.call item)
  end

  dest_arr
end

puts "\nTask5"
puts my_map((1..5).to_a) {|item| item ** 2}.to_s