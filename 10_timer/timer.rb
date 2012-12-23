class Timer

	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		convert(@seconds)
		"#{padded(@hrs)}:#{padded(@min)}:#{padded(@sec)}"
	end

	private

	def padded(num)
		if num <= 9
			"0#{num}"
		else
			"#{num}"
		end
	end

	def convert(num)
		if num >= 3600
			@hrs = num / 3600
			@min = (num - (@hrs * 3600)) / 60
			@sec = num - (3600 + (@min * 60))
		elsif num < 3600 && num >= 60
			@hrs = 0
			@min = num / 60
			@sec = num - (@min * 60)
		else
			@hrs = 0
			@min = 0
			@sec = num
		end
	end
end