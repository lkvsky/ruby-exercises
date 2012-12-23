class RPNCalculator

	attr_accessor :stack, :value

	def initialize
		@stack = []
	end

	def push(num)
		@stack << num
	end

	def plus
		if @stack.length < 2
			raise "calculator is empty"
		else
			num1 = @stack.pop
			num2 = @stack.pop
			@value = num1 + num2
			@stack << @value
		end
	end

	def minus
		if @stack.length < 2
			raise "calculator is empty"
		else
			num1 = @stack.pop
			num2 = @stack.pop
			@value = num1 - num2
			@stack << @value
		end
	end

	def divide
		if @stack.length < 2
			raise "calculator is empty"
		else
			num1 = @stack.pop
			num2 = @stack.pop
			@value = num1.to_f / num2.to_f
			@stack << @value
		end
	end

	def times
		if @stack.length < 2
			raise "calculator is empty"
		else
			num1 = @stack.pop
			num2 = @stack.pop
			@value = num1 * num2
			@stack << @value
		end
	end

end