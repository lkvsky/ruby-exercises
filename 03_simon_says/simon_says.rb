def echo(string)
	return "#{string}"
end

def shout(string)
	return "#{string.upcase}"
end

def repeat(str, num=1)
	if num == 1
		return "#{str} #{str}"
	else
		string = "#{str}"
		rep = num - 1
		rep.times do
			string += " #{str}"
		end
		return string
	end
end

def start_of_word(str, ind)
	index = ind - 1
	return str[0..index]
end

def first_word(str)
	arr = str.split(" ")
	return arr[0]
end

def titleize(str)
	arr = str.split(" ")
	arr.collect! do |word|
		if word == "the" || word == "and" || word == "or" || word == "over"
			word
		else
			word.capitalize
		end
	end
	if arr[0] == "the"
		arr.shift
		arr.unshift("The")
	end
	return arr.join(" ")
end