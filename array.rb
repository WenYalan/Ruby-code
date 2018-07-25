# def combine_names(first_name,last_name)
# 	first_name + " " + last_name
# end

# names = ["David", "Black"]
# puts combine_names(*names)

# a = "224Hello"

# puts a.to_f

class Person
	attr_accessor :name, :age, :email
	def to_ary
		[name, age, email]
	end
end

David = Person.new
David.name = "David"
David.age = 55
David.email = "David@glowing.com"
array = []
array.concat(David)
p array