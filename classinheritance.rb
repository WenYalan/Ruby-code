class Publication
	attr_accessor :publisher
end

class Magazine < Publication
	attr_accessor :editor
end

class Ezine < Magazine
end
# mag = Magazine.new
# mag.publisher = "David A. Black"
# mag.editor = "Jpe Smith"
# puts "Mag is published by #{mag.publisher}, and edited by #{mag.editor}."

class C
end

class D < C
end
mag = Magazine.new

def mag.wings
	puts "Look! I can fly!"
end
mag.wings

puts mag.is_a?(Magazine)

puts mag.is_a?(Publication)

# puts D.superclass
# puts D.superclass.superclass

# obj = Object.new
# obj,some_method
# my_class = Class.new do 
# 	def say_hello
# 		puts "Hello!"
# 	end
# end

# my_class.new.say_hello
