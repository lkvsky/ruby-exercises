class Array

	def sum
		total = 0
		self.each do |num|
			total += num
		end
		return total
	end

	def square
		squared = []
		self.each do |num|
			squared << num * num
		end
		return squared
	end

	def square!
		self.collect! do |num|
			num * num
		end
	end

end