
# state_hash = { :Connecticut => "CT",
# "Delaware" => "DE",
# "New Jersey" => "NJ",
# "Virginia" => "VA"}

# print "Enter the name of a state: "
# state = gets.chomp
# puts "The abbreviation is #{state_hash[state]}"

# def m(a: 2,b: 3, **c)
# 	puts a,b,c
# end

# m(x: 1, y: 2)

require 'set'

new_england = ["Connecticut", "Maine", "Massachusetts", "New Hampshire", "Rhode Island"]

state_set = Set.new(new_england){|state| state.upcase}

puts state_set