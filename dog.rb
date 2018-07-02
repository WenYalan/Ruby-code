
class Dog
	attr_reader :dog_years

	def age= (age)
		@age = age
		self.dog_years = age * 7
	end

	def dog_years= (age)
		@dog_years = age
	end

	private :dog_years=
end


Robin = Dog.new

Robin.age = 7

puts "Robin is #{Robin.dog_years} in dog years!"