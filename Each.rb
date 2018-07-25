# array = [1,2,3,4,5]
# array << 6
# array.each {|e| puts "This is #{e}"}

# x = "Original x"

# array = [1,2,3,4,5]

# array.each {|x| puts "This is #{x}"}

# puts "Please enter a number:"
# num = gets.chomp.to_i

# begin
# 	result = 100/num
# 	puts result
# rescue
# 	puts "The number is zero,right?"
# end

# puts "Success!"
#异常处理 使用backtrace和message

# def fussy_method(x)
# 	# raise ArgumentError, "I need a number under 10" unless x < 10
# 	raise  "I need a number under 10" unless x < 10
# end

# begin
# 	fussy_method(20)
# 	#使用 =>e 可以直接捕获异常 显示其具体的backtrace和message
# rescue => e
# 	puts "That was not an acceptable number!"
# 	puts "Here's the backtrace for this exception: "
# 	puts e.backtrace
# 	puts "And here's the exception object's message: "
# 	puts e.message
# end
require 'active_support/all'
today = Time.new
end_date = today.strftime("%Y/%m/%d")
start_date = (today - 2592000*3).strftime("%Y/%m/%d")
range = start_date+end_date

# filters%5Bstart_date%5D=2018%2F04%2F01&filters%5Bend_date%5D=2018%2F07%2F06

# puts start_date.to_query('filters[start_date]')
# puts end_date.to_query('filters[end_date]')
range = {
	:start_date => start_date,
	:end_date => end_date,
}.to_query('filters')
puts range
range = start_date.to_query['filters[start_date]']+"%"+end_date.to_query['filters[end_date]']
# puts end_date
# puts start_date


# puts start_date.to_query('filters[end_date]')
# puts end_date.to_query('filters[end_date]')