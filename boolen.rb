# #非空类定义为包含的最后一个值
# if (class MyClass; 1; end)
#     puts "1 True"
# else 
# 	puts "1 False"
# end

# #空类定义为假
# if (class MyClass;  end)
#     puts "2 True"
# else 
# 	puts "2 False"
# end

# #方法定义为真
# if (def m; return false; end)
#     puts "3 True"
# else 
# 	puts "3 False"
# end

i = 0
a = true

if a 
	3.times{
		i += 1
		puts i 
		break if i == 2

	}
	raise "???" if i !=2
end