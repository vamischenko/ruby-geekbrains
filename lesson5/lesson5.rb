# encoding: utf-8
# task 1
class Hello
	def initialize(name)
		@name = name		
	end
	def get_name
		return @name
	end
	def say
		puts 'Hello ' + get_name + '!'
	end
end

h = Hello.new('world')
h.say

# task 2
class User
	attr_accessor :name, :secondName, :lastName
	def initialize(name, secondName, lastName)
		@name = name
		@secondName = secondName
		@lastName = lastName
	end
	def full_name
		puts name + ' ' + secondName + ' ' + lastName
	end
	def in_array
		array = []
		array.push(name)
		array.push(secondName)
		array.push(lastName)
		return array
	end

end

us = User.new('Vlad', 'A', 'Mischenko')
us.full_name
p us.in_array

# task 3
class Group
	attr_accessor :user
	def initialize(User)
		array = []
		@user = User
		array.push(@user)
	end
	def get_array
		puts array
	end
end

# task 5
class Fabrika
	attr_accessor :beer, :ball, :cub
	@@countBeer = 0
	@@countBall = 0
	@@countCub  = 0
	def set_beer(beer)
		@beer = beer
		@@countBeer = @@countBeer + 1
	end
	def set_ball(ball)
		@ball = ball
		@@countBall = @@countBall + 1
	end
	def set_cub(cub)
		@cub = cub
		@@countCub = @@countCub + 1
	end
	
end