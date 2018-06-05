# class Ticket
# 	def event
# 		"Can't really be specified yet..."
# 	end
# end

# ticket = Ticket.new
# puts ticket.event

# class C
# 	def m
# 		puts "First definition"
# 	end

# 	def m
# 		puts "Second definition"
# 	end
# end

# C.new.m

# puts Time.new.strftime("%m-%d-%y")

# class Person
# 	def set_name(string)
# 		puts "Setting person's name..."
# 		@name = string
# 	end

# 	def get_name
# 		puts "Returning the person's name..."
# 		@name
# 	end
# end

# joe = Person.new
# joe.set_name("Joe")
# puts joe.get_name

# class Ticket
# 	attr_accessor :venue, :date, :price
# 	def initialize(venue,date)
# 		@venue = venue
# 		@date = date
# 	end

# 	# def set_price(amount)
# 	# 	@price = amount
# 	# end
# #a setter method
# 	def price=(amount)
# 		if (amount * 100).to_i == amount * 100
# 			@price = amount
# 		else
# 			puts "The price seems to be malformed."
# 		end
# 	end

# 	def discount(percent)
# 		@price = @price * (100 - percent) / 100.0
# 	end

# 	def price
# 		@price
# 	end

# 	def venue
# 		@venue
# 	end

# 	def date
# 		@date
# 	end
# end

# ticket = Ticket.new("Town Hall", "11/12/13")
# ticket.set_price(63.00)
# ticket.price=(63.00)
# ticket.price = 63.00
# puts "The ticket costs $#{"%.2f" % ticket.price}."
# ticket.set_price(72.50)
# puts "Whoops -- it just went up. It now costs $#{"%.2f" % ticket.price}."

# class TravelAgentSession
# 	def year=(y)
# 		@year = y.to_i
# 		if @year < 100
# 			@year = @year + 2000
# 		end
# 	end
# end

# date = "06/04/2018"
# month,day,year = date.split('/')
# puts month
# puts day
# puts year

class Ticket
	VENUES = ["Convention Center","Fairgrounds","Town Hall"]
	attr_reader :venue, :date
	attr_accessor :price
	def initialize(venue,date)
		if VENUES.include?(venue)
			@venue = venue
		else
			raise ArgumentError, "Unknown venue #{venue}"
		end
	end
end

def Ticket.most_expensive(*tickets)
	tickets.max_by(&:price)
end

venues = Ticket::VENUES
venues << "High School Gym"
puts Ticket::VENUES
# th = Ticket.new("Town Hall","11/12/13")
# cc = Ticket.new("Convention Hall","12/13/14")
# fg = Ticket.new("Fairgrounds","13/14/15")
# th.price = 12.55
# cc.price = 10.00
# fg.price = 18.00
# highest = Ticket.most_expensive(th,cc,fg)
# puts "The highest-priced ticket is the one for #{highest.venue}"
# wrong = fg.most_expensive







