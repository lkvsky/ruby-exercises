class Temperature
	
	def self.from_celsius(temp)
		Temperature.new(:c => temp)
	end

	def self.from_fahrenheit(temp)
		Temperature.new(:f => temp)
	end

	def initialize(options = {})
		if options.include?(:f)
			@fahrenheit = options[:f]
		elsif options.include?(:c)
			@celsius = options[:c]
		end
	end

	def in_fahrenheit
		if @fahrenheit == nil
			(@celsius * (9.0/5.0)) + 32
		else
			@fahrenheit
		end
	end

	def in_celsius
		if @celsius == nil
			(@fahrenheit - 32) * (5.0/9.0)
		else
			@celsius
		end
	end
end

class Celsius < Temperature
	def initialize(temp)
		super(:c => temp)
	end
end

class Fahrenheit < Temperature
	def initialize(temp)
		super(:f => temp)
	end
	
end