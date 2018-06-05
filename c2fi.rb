#encoding: utf-8  
require 'rubygems'  
require 'selenium-webdriver'  

# print "Hello. Please enter a Celsius value: "
# celsius = gets
# fahrenheit = (celsius.to_i * 9 / 5) + 32

# print "The Fahrenheit equivalent is "
# print fahrenheit
# puts  "."

class Temperature
	def Temperature.c2f(celsius)
		celsius * 9.0 / 5 + 32
	end

	def Temperature.f2c(fahrenheit)
		(fahrenheit - 32) * 5 / 9.0
	end
end

puts Temperature.c2f(100)
