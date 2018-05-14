#encoding: utf-8  
require 'rubygems'  
require 'selenium-webdriver'

puts "Reading Celsius temperature value from data file..."
num = File.read("/Users/wenyalan/Documents/Ruby-Code/temp.dat")
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "The number is " + num
print "Result:"
puts fahrenheit