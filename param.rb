obj = Object.new

def obj.multi_args(*x)
	puts "I can take zero or more arguments!"
end

def two_or_more(a,b,*c)
	puts "I require two or more arguments!"
	puts "And sure enough, I got: "
	p a,b,c
end

# obj.multi_args(1,2,3)
# two_or_more(1,2)

def default_args(a,b,c=1)
	puts "Values of variables: ",a,b,c
end

# default_args(3,2)
# default_args(4,5,6)

def mixed_args(a,b,*c,d)
	puts "Arguments:"
	p a,b,c,d
end

# mixed_args(1,2,3)

# def say_goodbye
# 	str = "Hello"
# 	abc = str
# 	str.replace("Goodbye")
# 	puts str
# 	puts abc
# end

# say_goodbye

# str = "Hello"
# abc = str
# str = "Goodbye"
# puts str
# puts abc

# x = 1
# puts x
# x = "This is a string."
# puts x

def change_string(str)
	str.replace("This is a new string!")
end

str = "This is a test."
puts str
# change_string(str)
str.freeze
change_string(str)
# change_string(str.dup)
puts str