class Dictionary

	attr_accessor :entries, :keywords

	def initialize
		@entries = {}
	end

	def add(entry = {})
		if entry.is_a?(String)
			@entries.merge!(entry => nil)
		else
			@entries.merge!(entry)
		end
	end

	def keywords
		@entries.keys.sort
	end

	def include?(str)
		@entries.each_key do |key|
			check = key.match("^#{str}$")
			if check != nil
				return true
			end
		end
		false
	end

	def find(str)
		to_return = {}
		@entries.each_key do |key|
			if key.include?(str)
				to_return[key] = @entries[key]
			end
		end
		return to_return
	end

	def printable
		str_arr = []
		@entries.sort.map do |key, value|
			str_arr << "[#{key}] \"#{value}\""
		end
		str_arr.join("\n")
	end

end