def reverser(&block)
	str = block.call
	words = str.split(" ")
	to_return = []
	words.each do |word|
		word_arr = word.split("")
		word_arr.reverse!
		to_return.push(word_arr.join(""))
	end
	to_return.join(" ")
end

def adder(num=1, &block)
	block.call + num
end

def repeater(num=1, &block)
	num.times do
		block.call
	end
end