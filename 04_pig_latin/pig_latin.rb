def translate(word)
	words = word.split(" ")
	words.collect! do |word|
		if word.start_with?("a", "e", "i", "o", "u") == true
			word + "ay"
		elsif word.start_with?("thr", "sch", "squ") == true
			arr = word.split("")
			first_three = arr.first(3)
			arr.concat(first_three)
			arr.push("a", "y")
			arr.delete_at(0)
			arr.delete_at(0)
			arr.delete_at(0)
			arr.join("")
		elsif word.start_with?("ch", "th", "qu", "sq", "br") == true
			arr = word.split("")
			first_two = arr.first(2)
			arr.concat(first_two)
			arr.push("a", "y")
			arr.delete_at(0)
			arr.delete_at(0)
			arr.join("")
		else
			arr = word.split("")
			letter_one = arr.first
			arr.push(letter_one, "a", "y")
			arr.delete_at(0)
			arr.join("")
		end
	end
	return words.join(" ")
end