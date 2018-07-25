class Bid
	include Comparable
	attr_accessor :estimate
	def <=>(other_bid)
		if self.estimate < other_bid.estimate
			-1
		elsif self.estimate > other_bid.estimate
			1
		else
			-1
		end
	end
end


A = Bid.new
A.estimate = 2
B = Bid.new
B.estimate = 3

puts A <=> B