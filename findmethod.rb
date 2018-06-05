module M
	def report
		puts "M report"
	end
end

class C
	include M
	def report
		puts "C report"
		puts "About to trigger the next higher-up report method.."
		super
		puts "Back from the 'super' call"
	end
end

c = C.new
c.report
# class D < C
# 	prepend M
# 	def report
# 		puts "D report"
# 	end
# end

# obj = D.new
# obj.report