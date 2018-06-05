# class Bicycle
# 	attr_reader :gears, :wheels, :seats
# 	def initialize(gears = 1)
# 		@wheels = 2
# 		@seats = 1
# 		@gears = gears
# 		puts "The number of gears is #{@gears}"
# 	end
# end

# class Tandem < Bicycle
# 	def initialize(gears = 8)
# 		super(5)
# 		@seats = 2
# 	end
# end

# obj = Tandem.new
# puts obj.seats

# class Student
# 	def method_missing(m, *args)
# 		if m.to_s.start_with?("grade_for_")
# 			puts m.to_s
# 		else
# 			super
# 		end
# 	end
# end

# obj = Student.new
# obj.grade

class Person
	PEOPLE = []
	attr_reader :name, :hobbies, :friends
	def initialize(name)
		@name = name
		@hobbies = []
		@friends = []
		PEOPLE << self
	end

	def has_hobby(hobby)
		@hobbies << hobby
	end

	def has_friend(friend)
		@friends << friend
	end

	def self.method_missing(m, *args)
		method = m.to_s
		if method.start_with?("all_with_")
		   attr = method[9..-1]
		   if self.public_method_defined?(attr)
		   	PEOPLE.find_all do |person|
		   		person.send(attr).include?(args[0])
		   	end
		   else
		   	raise ArgumentError, "Can't find #{attr}"
		   end
		else
			super
		end
	end
end

P = Person.new("Pual")
K = Person.new("Kevin")
B = Person.new("Bob")
P.has_friend(K)
P.has_friend(B)
B.has_hobby("rings")
Person.all_with_friends(K).each do |person|
	puts "#{person.name} is friends with #{K.name}"
end

Person.all_with_hobbies("rings").each do |person|
	puts "#{person.name} is into rings"
end