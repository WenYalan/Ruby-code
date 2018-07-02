#Tansform the @@total_count to a instance variable @total_count
class Car
	attr_accessor :brand 
	# @@total_count = 0
	@@brand = []
	@@make_cars = {}
	attr_reader :brand

	def self.total_count
		# @@total_count
		@total_count ||= 0
	end

	def self.total_count= (n)
		@total_count = n
	end

	def self.add_make(brand)
		unless @@brand.include?(brand)
			@@brand << brand
			@@make_cars[brand] = 0
		end
	end

	def initialize(brand)
		if @@brand.include?(brand)
			@brand = brand
			@@make_cars[brand] += 1
			self.class.total_count += 1
			puts "Creating a new #{brand}"
		else
			raise "No such make: #{brand}!"
		end
	end

	def make_mates
		@@make_cars[self.brand]
	end
end

class Hybrid < Car
end
Car.add_make("Honda")
h = Hybrid.new("Honda")
hy = Hybrid.new("Honda")
puts "There are #{Hybrid.total_count} hybrids in existence!"
puts "There are #{Car.total_count}"


# Car.add_make("Honda")
# Car.add_make("Ford")
# h = Car.new("Honda")
# f = Car.new("Ford")
# h2 = Car.new("Honda")
# puts "There are #{Car.total_count}"
# puts "There are #{h2.make_mates}"
puts h.brand