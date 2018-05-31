require "rubygems"


ticket = Object.new

def ticket.venue
	"Town Hall"
end

def ticket.date
	"01/02/03"
end

def ticket.event
	"Author's reading"
end

def ticket.performer
	"Mark Twain"
end

def ticket.seat
	"Second Balcony, row J, seat 12"
end

def ticket.price
	5.50
end

# puts "This ticket is for: #{ticket.event},at #{ticket.venue}."+"The performer 
# is #{ticket.performer}."+"The seat is #{ticket.seat}," +"and it
#  costs $#{"%.2f" % ticket.price}"

# def ticket.available?
# 	false
# end

# if ticket.available?
# 	puts "You're in luck!"
# else
# 	puts "Sorry, that seat has been sold."
# end

obj = Object.new
puts "The id of obj is #{obj.object_id}."
str = "Strings are objects too, and this is a string!"
puts "The id of the string object str is #{str.object_id}"
puts "And the id of the ineger 100 is #{100.object_id}"