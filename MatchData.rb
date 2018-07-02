# name = gets.to_s
# if m = /la/.match(name)
# 	puts "Found a match!"
# 	print "Here's the unmatched start of the string: "
# 	puts m.pre_match
# 	print "Here's the unmatched end of the string: "
# 	puts m.post_match
# else
# 	puts "No match"
# end

# print "Exit the program:(yes or no): "
# answer = gets.chomp
# case answer
# when "yes","y"
# 	puts "you want to leave!"
# 	exit
# when "no"
# 	puts "you'll continue."
# else
# 	puts "This is a wrong order!"
# end

# first_name = "Kelly"
# last_name = "Gfp"

# case 
# when first_name == "David", last_name == "Black"
# 	puts "You might be David.Black."
# when Time.now.wday == 5
# 	puts "Today is Friday!"
# else
# 	puts "nothing."	
# end

n = 1 
# loop do 
# 	n = n + 1
# 	break if n > 9
# end
#loop语句写循环，遇到next时则跳转到loop do后执行
# loop do
# 	n = n + 1
# 	next unless n == 10
# 	break
# end
# puts n
# puts "In the end..."

# while n < 11
# 	puts n
# 	n = n + 1
# end

# until n > 10
# 	puts n
# 	n = n + 1
# end
n = n + 1 until n == 10
puts n 
puts "Done!"